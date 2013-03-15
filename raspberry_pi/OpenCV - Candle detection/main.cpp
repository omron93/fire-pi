#include <cv.h>
#include <highgui.h>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <sstream>
#include "uart.h"
#include <unistd.h>


using namespace cv;
using namespace std;

Mat img,hsv,hue,sat,val,val1,c_out,input,threshed;

vector<Mat> slices;
VideoCapture san_cap(0);
RNG rng(12345);
int i;
int   lowSliderPosition3 =242,
                          highSliderPosition3 = 0,
                                  brightness = 50;

char buffer[100];
uint32_t max;

bool GUI = false;

Mat theshold_input(Mat img)
{
    cvtColor(img, hsv, CV_RGB2HSV);
    // split image to H,S and V images
    split(hsv,slices);

    slices[0].copyTo (hue); // get the hue channel
    slices[1].copyTo(sat); // get the sat channel
    slices[2].copyTo(val); // get the V channel
    /* threshold (hue,hue1,lowSliderPosition,255, CV_THRESH_BINARY);
     threshold (hue,hue2,highSliderPosition,255, CV_THRESH_BINARY_INV);

     threshold (sat,sat1,lowSliderPosition2,255, CV_THRESH_TOZERO);
     threshold (sat,sat2,highSliderPosition2,255, CV_THRESH_TOZERO);
    */
    threshold (val, val1, lowSliderPosition3,255, CV_THRESH_BINARY);
    //imshow("thrasholded_1", val1);

    Mat element(10,10,CV_8U,Scalar(1));
    erode(val1,val1,element);

    // threshold (val, val2, highSliderPosition3,255, CV_THRESH_TOZERO);

    /* hue3 = hue1 &hue2;
     sat3 = sat1 xor sat2;
     val3 = val1 xor val2;
     hue_sat = hue3 &sat3;
     hue_sat_val = hue3 &sat3 &val3;
     sat_val = sat3 &val3;
     sat_val_xor = sat3 xor val3;
     sat_val_or = sat3 | val3;
    */


    // imshow("hue3", hue3);
    //  imshow("hue2", hue2);
    //imshow("hue1", hue1);
    // imshow("hue", hue);
    // imshow("sat1", sat1);
    //imshow("sat2", sat2);
    // imshow("sat3", sat3);
    //imshow("val", val);
    //imshow("val1", val1);
    //imshow("val2", val2);
    //imshow("val3", val3);
    //imshow("val", val);
    //imshow("output", hue_sat_val);
    //imshow("output_xor", sat_val_xor);
    // imshow("output_or", sat_val_or);

    // imshow("output", bw);
    return val1;
}
int init_opencv()
{
    if(GUI == true)
    {
        cvNamedWindow("bars",CV_WINDOW_NORMAL);
        cvCreateTrackbar("Low val", "bars", &lowSliderPosition3, 255, 0);
        cvCreateTrackbar("High val", "bars", &highSliderPosition3, 255, 0);
        cvCreateTrackbar("Brigtness", "bars", &brightness, 100, 0);
    }
    san_cap.VideoCapture::set(CV_CAP_PROP_FRAME_WIDTH,320);
    san_cap.VideoCapture::set(CV_CAP_PROP_FRAME_HEIGHT,240);
    san_cap.VideoCapture::set(CV_CAP_PROP_BRIGHTNESS,0.5);
    san_cap.VideoCapture::set(CV_CAP_PROP_HUE,0.5);
    san_cap.VideoCapture::set(CV_CAP_PROP_GAIN,0.20);
    san_cap.VideoCapture::set(CV_CAP_PROP_EXPOSURE,0.45);

    cout << "Width of frame: " <<  san_cap.VideoCapture::get(CV_CAP_PROP_FRAME_WIDTH) << endl; 		// Width of the frames in the video stream
    cout << "Height of frame: " << san_cap.VideoCapture::get(CV_CAP_PROP_FRAME_HEIGHT) << endl; 	// Height of the frames in the video stream
    cout << "Image brightness: " << san_cap.VideoCapture::get(CV_CAP_PROP_BRIGHTNESS) << endl; 	// Brightness of the image (only for cameras)
    cout << "Image hue: " << san_cap.VideoCapture::get(CV_CAP_PROP_HUE)<< endl;
    cout << "Image gain: " << san_cap.VideoCapture::get(CV_CAP_PROP_GAIN)<< endl;
    cout << "Image exposure: " << san_cap.VideoCapture::get(CV_CAP_PROP_EXPOSURE)<< endl;
    return 0;
}


int main( int argc, const char** argv )
{


    if(argc ==2)
    {
        char *s2 = "-g";
        int i = strcmp(argv[1], s2);
        printf("argv[%d] = %s\n", i, argv[1]);
        if(i == 0)
        {
            GUI = true;
        }
    }

    init_UART();
    while(connect_STM32F4() == 0);

    init_opencv();


    if (san_cap.isOpened())
    {
        while (1)
        {

            san_cap.VideoCapture::set(CV_CAP_PROP_BRIGHTNESS,brightness/100.0);

            san_cap.read(c_out);
            int waitKeyValue = 10;
            if(GUI == true)imshow("input", c_out);
            input = c_out;

            threshed = theshold_input(c_out);
            if(GUI == true)imshow("thrasholded", threshed);
            //cvtColor(threshed, threshed, CV_RGB2HSV);

            vector<vector<Point> > contours;
            vector<Vec4i> hierarchy;

            /// Detect edges using canny
            /// Find contours
            findContours( threshed, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );

            /// Get the moments
            vector<Moments> mu(contours.size() );
            for( uint32_t i = 0; i < contours.size(); i++ )
            {
                mu[i] = moments( contours[i], false );
            }

            ///  Get the mass centers:
            vector<vector<Point> > contours_poly( contours.size() );
            //vector<Point2f>center( contours.size() );
            vector<Point2f> mc( contours.size() );
            for( uint32_t i = 0; i < contours.size(); i++ )
            {
                mc[i] = Point2f( mu[i].m10/mu[i].m00 , mu[i].m01/mu[i].m00 );
            }
            vector<Rect> boundRect( contours.size() );
            /// Draw contours
            Mat drawing = Mat::zeros( threshed.size(), CV_8UC3 );
            for( uint32_t i = 0; i < contours.size(); i++ )
            {
                approxPolyDP( Mat(contours[i]), contours_poly[i], 3, true );
                boundRect[i] = boundingRect( Mat(contours_poly[i]) );
            }
            /* for( uint32_t i = 0; i< contours.size(); i++ )
             {
                 Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
                 // drawContours( input, contours, i, color, 2, 8, hierarchy, 0, Point() );
                 circle( input, mc[i], 4, color, -1, 8, 0 );
                 rectangle( input, boundRect[i].tl(), boundRect[i].br(), color, 2, 8, 0 );

                 stringstream ss;//create a stringstream
                 ss << "X:"<< (int)mc[i].x << " Y:" << (int)mc[i].y << "   ---Candle:" << i << "\n";//add number to the stream

                 putText(input, ss.str(), Point2f(mc[i].x +10 , mc[i].y +30), CV_FONT_HERSHEY_COMPLEX, 0.5, Scalar::all(255), 1, 8, false );
                 //cout << mc[i].x << ", " << mc[i].y << endl;
             }*/
            if(contours.size() > 0)
            {
                Scalar color = Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
                // drawContours( input, contours, i, color, 2, 8, hierarchy, 0, Point() );
                circle( input, mc[contours.size()-1], 4, color, -1, 8, 0 );
                rectangle( input, boundRect[contours.size()-1].tl(), boundRect[contours.size()-1].br(), color, 2, 8, 0 );

                stringstream ss;//create a stringstream
                ss << "X:"<< (int)mc[contours.size()-1].x << " Y:" << (int)mc[contours.size()-1].y << " - Candle:" << contours.size()-1 << "\n";//add number to the stream

                putText(input, ss.str(), Point2f(mc[contours.size()-1].x +10 , mc[contours.size()-1].y +30), CV_FONT_HERSHEY_COMPLEX, 0.5, Scalar::all(255), 1, 8, false );
                //cout << mc[i].x << ", " << mc[i].y << endl;








                ///send biggest one
                stringstream sd;
                sd << "c|" << (int)mc[contours.size()-1].x << "/" << (int)mc[contours.size()-1].y << "\n";
                std::string s = sd.str();
                const char *Candle_Pos = s.c_str();

                sd.seekg(0, ios::end);
                int sizee = sd.tellg();


                if(sizee < 11)
                {
                    write(fd, Candle_Pos, sizee);
                    //printf("Trigger: %s\n", Candle_Pos);
                    /*  if(sizeof(buffer) != -1)
                      {

                          int n = read(fd, buffer, sizeof(buffer));

                          printf("Echo: %s\n", buffer);
                          memset(&buffer, 0, sizeof buffer);
                      }
                      */
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
                }
            }

            line( input, Point(0, 120), Point(640, 120), Scalar(255,50,0), 2, CV_AA);
            line( input, Point(0, 40), Point(640, 40), Scalar(0,50,255), 2, CV_AA);
            /// Show in a window
            if(GUI == true)namedWindow( "Contours", CV_WINDOW_AUTOSIZE );
            if(GUI == true) imshow( "Contours", input );

            //usleep(100000);


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


