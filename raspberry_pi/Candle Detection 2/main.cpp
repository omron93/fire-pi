#include <cv.h>
#include <highgui.h>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <sstream>
#include "uart.h"
#include <unistd.h>

#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>
#include <stdio.h>

using namespace cv;
using namespace std;


Mat img;
Mat templ;
Mat result;
Mat result2;
Mat result3;
Mat result_fin,hsv,val;

vector<Mat> slices;
VideoCapture san_cap(0);
RNG rng(12345);
int   min_val =150, brightness = 50;

const char* image_window = "Source Image";
const char* result_window = "Result window";
char *s2;
int u,i,o,p;
char buffer[100];
uint32_t max;

bool GUI = true;
bool DEBUG = true;

int init_opencv()
{

    if(GUI == true)
    {
        cvNamedWindow("bars",CV_WINDOW_NORMAL);
        cvCreateTrackbar("Brigtness", "bars", &brightness, 100, 0);
        cvCreateTrackbar("Min_val", "bars", &min_val, 255, 0);
    }
    san_cap.VideoCapture::set(CV_CAP_PROP_FRAME_WIDTH,320);
    san_cap.VideoCapture::set(CV_CAP_PROP_FRAME_HEIGHT,240);
    san_cap.VideoCapture::set(CV_CAP_PROP_BRIGHTNESS,0.5);
    cout << "Width of frame: " <<  san_cap.VideoCapture::get(CV_CAP_PROP_FRAME_WIDTH) << endl; 		// Width of the frames in the video stream
    cout << "Height of frame: " << san_cap.VideoCapture::get(CV_CAP_PROP_FRAME_HEIGHT) << endl; 	// Height of the frames in the video stream
    cout << "Image brightness: " << san_cap.VideoCapture::get(CV_CAP_PROP_BRIGHTNESS) << endl; 	// Brightness of the image (only for cameras)

    return 0;
}


int main( int argc, const char** argv )
{

    for (o = 2; o <= argc ; o++)
    {
        s2 = "-g";
        u = strcmp(argv[o], s2);
        if(u == 0) GUI = false;
        s2 = "-d";
        u = strcmp(argv[o], s2);
        if(u == 0) DEBUG = false;
    }



    init_UART();
    while(connect_STM32F4() == 0);

    init_opencv();


    if (san_cap.isOpened())
    {
        while (1)
        {

            san_cap.VideoCapture::set(CV_CAP_PROP_BRIGHTNESS,brightness/100.0);
            san_cap.read(img);
            int waitKeyValue = 10;
            //imshow("input", img);


///localize candle
            Mat img_display;
            img.copyTo( img_display );

            /// Localizing the best match with minMaxLoc
            double minVal;
            double maxVal;
            Point minLoc;
            Point maxLoc;
            Point matchLoc;

            cvtColor(img, hsv, CV_RGB2HSV);
            // split image to H,S and V images
            split(hsv,slices);
            //slices[0].copyTo (hue); // get the hue channel
            //slices[1].copyTo(sat); // get the sat channel
            slices[2].copyTo(val); // get the V channel

            threshold (val, val, min_val,255, THRESH_TOZERO);

            //imshow("val",val);
            minMaxLoc( val, &minVal, &maxVal, &minLoc, &maxLoc, Mat() );

            matchLoc = maxLoc;

            /// Show me what you got

            if(maxVal > 0)
            {
                rectangle( img_display, matchLoc, Point( matchLoc.x + 10, matchLoc.y + 15), Scalar(255,50,0), 2, 8, 0 );
                rectangle( val, matchLoc, Point( matchLoc.x + 10 , matchLoc.y + 15 ), Scalar(0,50,255), 2, 8, 0 );

                ///send biggest one
                stringstream sd;
                sd << "c|" << (int)matchLoc.x << "/" << (int)matchLoc.y << "\n";
                std::string s = sd.str();
                const char *Candle_Pos = s.c_str();

                sd.seekg(0, ios::end);
                int sizee = sd.tellg();


                if(sizee < 11)
                {
                    write(fd, Candle_Pos, sizee);
                    if(DEBUG == true)printf(Candle_Pos);
                }

            }
            else
            {

                stringstream sd;
                sd << "cn|" << "0" << "\n";
                std::string s = sd.str();
                const char *candle_no = s.c_str();

                sd.seekg(0, ios::end);
                int sizee = sd.tellg();


                if(sizee < 11)
                {
                    write(fd, candle_no, sizee);
                    if(DEBUG == true)printf(candle_no);
                }

            }
            if(GUI == true) imshow( image_window, img_display );
            if(GUI == true)imshow( result_window, val );









            int key = waitKey(waitKeyValue);
            if(key!=-1)cout<<key<<endl;
            if (key == 27 || key == 1048586)
            {
                if (waitKeyValue == 10)waitKeyValue = 0;
                else waitKeyValue = 10;
            }
        }
    }
    else cout << "videoCapture not working" << endl;



    return 0;
}







