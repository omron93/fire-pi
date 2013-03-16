#include <cv.h>
#include <highgui.h>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <sstream>

using namespace cv;
using namespace std;

Mat img, hsv, RR, GG, BB, val1, c_out, input, threshed, RR1, RR2, RR3;

vector<Mat> slices;

RNG rng(12345);


int lowSliderPosition = 180,
  highSliderPosition = 0,
  lowSliderPosition2 = 0,
  highSliderPosition2 = 0,
  lowSliderPosition3 = 242,
  highSliderPosition3 = 0,
  brightness = 50;

Mat theshold_input(Mat img)
{

    // split image to R,G,B images
    split(img,slices);

    slices[0].copyTo (BB); // get the hue channel
    slices[1].copyTo(GG); // get the sat channel
    slices[2].copyTo(RR); // get the V channel
    threshold (RR,RR1,lowSliderPosition,255, CV_THRESH_BINARY);
    // threshold (RR,RR2,255,255, CV_THRESH_BINARY);
    /*
         threshold (sat,sat1,lowSliderPosition2,255, CV_THRESH_TOZERO);
         threshold (sat,sat2,highSliderPosition2,255, CV_THRESH_TOZERO);
        */
//    threshold (val, val1, lowSliderPosition3,255, CV_THRESH_BINARY);
    //imshow("thrasholded_1", val1);

    //Mat element(10,10,CV_8U,Scalar(1));
    //erode(val1,val1,element);

    // threshold (val, val2, highSliderPosition3,255, CV_THRESH_TOZERO);

    RR3 = RR1;// xor RR2;
    /* sat3 = sat1 xor sat2;
     val3 = val1 xor val2;
     hue_sat = hue3 &sat3;
     hue_sat_val = hue3 &sat3 &val3;
     sat_val = sat3 &val3;
     sat_val_xor = sat3 xor val3;
     sat_val_or = sat3 | val3;
    */
    //imshow("RR3", RR3);
    Mat element2(1,2,CV_8U,Scalar(1));
    erode(RR3,RR3,element2);

    Mat element3(2,10,CV_8U,Scalar(1));
    dilate(RR3,RR3,element3);


    //imshow("RR2", RR2);
    // imshow("RR1", RR1);
     imshow("RR", RR);
    // imshow("sat1", sat1);
    //imshow("sat2", sat2);
    // imshow("sat3", sat3);
    //imshow("sat", GG);
    //imshow("val1", val1);
    //imshow("val2", val2);
    //imshow("val3", val3);
    //imshow("val", RR);
    //imshow("output", hue_sat_val);
    //imshow("output_xor", sat_val_xor);
    // imshow("output_or", sat_val_or);

    // imshow("output", bw);
    return RR3;
}





int main(int argc, char** argv)
{
    cvNamedWindow("bars",CV_WINDOW_NORMAL);
    cvCreateTrackbar("Low hue", "bars", &lowSliderPosition, 255, 0);
    cvCreateTrackbar("High hue", "bars", &highSliderPosition, 255, 0);

    cvCreateTrackbar("Low sat", "bars", &lowSliderPosition2, 255, 0);
    cvCreateTrackbar("High sat", "bars", &highSliderPosition2, 255, 0);

    cvCreateTrackbar("Low val", "bars", &lowSliderPosition3, 255, 0);
    cvCreateTrackbar("High val", "bars", &highSliderPosition3, 255, 0);

    cvCreateTrackbar("Brigtness", "bars", &brightness, 100, 0);

    /*VideoCapture san_cap(-1);
    san_cap.VideoCapture::set(CV_CAP_PROP_FRAME_WIDTH,320);
    san_cap.VideoCapture::set(CV_CAP_PROP_FRAME_HEIGHT,240);
    san_cap.VideoCapture::set(CV_CAP_PROP_BRIGHTNESS,0.5);

    cout << "Width of frame: " <<  san_cap.VideoCapture::get(CV_CAP_PROP_FRAME_WIDTH) << endl; 		// Width of the frames in the video stream
    cout << "Height of frame: " << san_cap.VideoCapture::get(CV_CAP_PROP_FRAME_HEIGHT) << endl; 	// Height of the frames in the video stream
    cout << "Image brightness: " << san_cap.VideoCapture::get(CV_CAP_PROP_BRIGHTNESS) << endl; 	// Brightness of the image (only for cameras)

    if (!san_cap.isOpened())
    {
      cout << "videoCapture not working" << endl;
    }*/
    
    while (1)
      {
        //san_cap.VideoCapture::set(CV_CAP_PROP_BRIGHTNESS,brightness/100.0);

        c_out = imread( argv[1], 1 );

        //san_cap.read(c_out);
        //line( c_out, Point(0, 140), Point(640, 140), Scalar(255,50,0), 3, CV_AA);                     //laser line
        //line( c_out, Point(0, 240), Point(640, 240), Scalar(55,250,0), 3, CV_AA);                    //Center line
        //c_out = imread("/home/kuba/Pictures/Snímek obrazovky pořízený 2012-10-13 11:59:33.png");     //load external picture
        imshow("input", c_out);


        int waitKeyValue = 10;
        threshed = theshold_input(c_out);
        imshow("threshed", threshed);



        vector<vector<Point> > contours;
        vector<Vec4i> hierarchy;

        /// Find contours
        findContours( threshed, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );

        /// Find the rotated rectangles and ellipses for each contour
        vector<RotatedRect> minRect( contours.size() );
        vector<RotatedRect> minEllipse( contours.size() );

        for( int i = 0; i < contours.size(); i++ )
        {
            minRect[i] = minAreaRect( Mat(contours[i]) );
        }
        if(contours.size() == 0) continue;

        bool original[contours.size()][640];
        int line_count=-1;
        int linesmax[contours.size()][1][1];
        for( int o =  0; o <= 640; o++ )
        {
            original[0][o]= false;

        }
        for( int i = 0; i< contours.size(); i++ )
        {
            Point2f rect_points[4];
            Point2f line_points[1];
            minRect[i].points( rect_points );


            if((rect_points[3].x - rect_points[1].x) > 50 and (rect_points[3].x - rect_points[1].x) > (rect_points[0].y - rect_points[2].y))
            {
                line_count++;
                /* putText(c_out, "x0", rect_points[0], CV_FONT_HERSHEY_COMPLEX, 0.5, Scalar::all(255), 1, 8, false );
                 putText(c_out, "x1", rect_points[1], CV_FONT_HERSHEY_COMPLEX, 0.5, Scalar::all(255), 1, 8, false );
                 putText(c_out, "x2", rect_points[2], CV_FONT_HERSHEY_COMPLEX, 0.5, Scalar::all(255), 1, 8, false );
                 putText(c_out, "x3", rect_points[3], CV_FONT_HERSHEY_COMPLEX, 0.5, Scalar::all(255), 1, 8, false );
                 */

                if(rect_points[0].x < rect_points[2].x)
                {
                    line_points[0] = Point2f(((rect_points[0].x - rect_points[1].x)/2)+rect_points[1].x,((rect_points[0].y - rect_points[1].y)/2)+rect_points[1].y);
                    line_points[1] = Point2f(((rect_points[3].x - rect_points[2].x)/2)+rect_points[2].x,((rect_points[3].y - rect_points[2].y)/2)+rect_points[2].y);

                    for( int o =  line_points[0].x; o <= line_points[1].x; o++ )
                    {
                        original[0][o]= true;
                    }
                    linesmax[line_count][0][0] = line_points[0].x;
                    linesmax[line_count][0][1] = line_points[0].y;
                    linesmax[line_count][1][0] = line_points[1].x;
                    linesmax[line_count][1][1] = line_points[1].y;

                    line( c_out,  line_points[0], line_points[1], Scalar( 0, 255, 0),2, 8);

                }
                else
                {
                    line_points[0] = Point2f(((rect_points[2].x - rect_points[1].x)/2)+rect_points[1].x,((rect_points[1].y - rect_points[2].y)/2)+rect_points[2].y);
                    line_points[1] = Point2f(((rect_points[3].x - rect_points[0].x)/2)+rect_points[0].x,((rect_points[0].y - rect_points[3].y)/2)+rect_points[3].y);

                    linesmax[line_count][0][0] = line_points[0].x;
                    linesmax[line_count][0][1] = line_points[0].y;
                    linesmax[line_count][1][0] = line_points[1].x;
                    linesmax[line_count][1][1] = line_points[1].y;

                    line( c_out,  line_points[0], line_points[1], Scalar( 255, 0, 0),2, 8);

                }
            }


        }
        for( int o =  0; o <= 640; o++ )
        {
            if(original[0][o]== true)
            {
                putText(c_out, "|", Point2f(o,50), CV_FONT_HERSHEY_COMPLEX, 0.5, Scalar(255,0,0), 1, 8, false );

            }
        }
        int lines[line_count][1][1];
        for( int i = 0; i< line_count; i++ )
        {
            lines[i][0][0] = linesmax[i][0][0];
            lines[i][0][1] = linesmax[i][0][1];
            lines[i][1][0] = linesmax[i][1][0];
            lines[i][1][1] = linesmax[i][1][1];
        }



        /// Show in a window
        namedWindow( "Contours", CV_WINDOW_AUTOSIZE );
        imshow( "Contours", c_out );

        int key = waitKey(waitKeyValue);
        if(key!=-1)cout<<key<<endl;
        if (key == 27 || key == 1048586)
        {
            if (waitKeyValue == 10)waitKeyValue = 0;
            else waitKeyValue = 10;
        }
    }
    



    return 0;
}


