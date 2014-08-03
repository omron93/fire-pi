/*
 * main.cpp
 * 
 * Copyright 2014 Jakub Pecháček <kubape12@gmail.com>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */
 
 /* using:
  *  OpenCV
  *	 Raspicam - Rafael Muñoz Salinas - BSD license
 */
 
#include <cv.h>
#include <highgui.h>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <sstream>
#include <unistd.h>
#include <raspicam/raspicam_cv.h>

/* Makra pro vyber typu vyhledani svicky */
#define BRIGHTEST			0
#define TEMPLATE_MATCH		1
#define THRESHOLDED_BIGGEST	2


/* prikaz pro preklad na Raspberry pi */
//g++ $(pkg-config --cflags --libs opencv) main.cpp -o  Candle_detector -I/usr/local/include/ -lraspicam -lraspicam_cv


using namespace cv;
using namespace std;

	/* definice raspberry kamery */
	raspicam::RaspiCam_Cv Camera;

    int waitKeyValue = 10;

	/* inicializacni promenne */
	int low_val = 20;
    int high_val = 200;
    int width = 160; /*rozliseni*/
    int height = 160; /*rozliseni*/
    int brightness = 50;
    int contrast = 50;
    int saturation = 50;
    int gain = 50;
    int exposure = 50;;
	
	/* moznost vypnout okna a prostredi celkove */
	bool gui = true; 
	
	/* vyber typu vyhledavani */
	int finding_type = THRESHOLDED_BIGGEST;

	/*definice vstupni a vystupni matice ktere se zobrazuji */
	Mat input_img, output_img; 
	
	const char* source_window = "Source Image";
	const char* result_window = "Result window";

	/* prototypy funkci */
	int inicialization(void);
	void show_GUI(void);
	Mat brightest(Mat process_img);
	Mat threshold_input(Mat process_img);
	Mat thresholded_biggest(Mat process_img);
	Mat templ_matching(Mat process_img);

int main(int argc, const char** argv)
{
    cout << "OpenCV Candle Detector" << endl;
    cout << "Made by Jakub Pechacek!" << endl;
	cout << "GNU General Public License" << endl;
	cout << "Based on Raspicam and OpenCV with tuturials" << endl;
	
    if(!(inicialization())) //pokud se povede inicializace tak se pokracuje
    {
        while(1){ // nekonecna smycka
			
			/* zde se projevi hybani s posuvniky v okne */
            Camera.set ( CV_CAP_PROP_BRIGHTNESS, brightness );
            Camera.set ( CV_CAP_PROP_CONTRAST, contrast );
            Camera.set ( CV_CAP_PROP_SATURATION, saturation );
            Camera.set ( CV_CAP_PROP_GAIN, gain );
            Camera.set ( CV_CAP_PROP_EXPOSURE, exposure  );

			/* ziskani obrazku z kamery */
			Camera.grab();
            Camera.retrieve (input_img);

			/* vyber typu vyhledavani */
			switch(finding_type)
			{
				case BRIGHTEST:
					output_img = brightest(input_img);
				break;
				case TEMPLATE_MATCH:
					output_img = templ_matching(input_img);
				break;
				case THRESHOLDED_BIGGEST:
					output_img = thresholded_biggest(input_img);
				break;
			}
			
			/* zobrazit prvky prostredi (okna) */
			show_GUI();
			
			/* nechat cas na vykresleni oken a otestovat na klavesu "ESC" pro pauzu */
            int key = waitKey(waitKeyValue);
            if(key!=-1)cout<<key<<endl;
            if (key == 27)
            {
                if (waitKeyValue == 10)waitKeyValue = 0;
                else waitKeyValue = 10;
       	    }
        };

    }
	cout << "Close" << endl;


    return 0;
}
int inicialization(void)
{
	/* okno s posuvniky */
    cvNamedWindow("bars",CV_WINDOW_NORMAL);

    cvCreateTrackbar("Low val", "bars", &low_val, 255, 0);
    cvCreateTrackbar("High val", "bars", &high_val, 255, 0);
    cvCreateTrackbar("Brigtness", "bars", &brightness, 100, 0);
    cvCreateTrackbar("contrast", "bars", &contrast, 100, 0);
    cvCreateTrackbar("saturation", "bars", &saturation, 100, 0);
    cvCreateTrackbar("gain", "bars", &gain, 100, 0);
    cvCreateTrackbar("exposure", "bars", &exposure, 100, 0);

	/* prvni nastaveni kamery */
    Camera.set ( CV_CAP_PROP_FRAME_WIDTH,  width );
    Camera.set ( CV_CAP_PROP_FRAME_HEIGHT, height );
    Camera.set ( CV_CAP_PROP_BRIGHTNESS, brightness );
    Camera.set ( CV_CAP_PROP_CONTRAST, contrast );
    Camera.set ( CV_CAP_PROP_SATURATION, saturation );
    Camera.set ( CV_CAP_PROP_GAIN, gain );
    Camera.set ( CV_CAP_PROP_FORMAT, CV_8UC3 );
    Camera.set ( CV_CAP_PROP_EXPOSURE, exposure  );

    /* otevreni kamery */
    cout<<"Opening Camera..."<<endl;
    if (!Camera.open()) {cerr<<"Error opening the camera"<<endl;return 1;}
    //Start capture
	cout << "Camera successfully opened" << endl << "Capturing ..." << endl;
	
    return 0;
}
void show_GUI(void)
{
	/* vykreslit okno se vstupnim a zpracovanym obrazkem */
	if(gui == true) imshow( source_window, input_img );
    if(gui == true) imshow( result_window, output_img );
	
}

Mat threshold_input(Mat process_img)
{
	Mat hsv, slices[3], hue, sat, val, out_img;
	
    cvtColor(process_img, hsv, CV_RGB2HSV); // prevedeni z RGB do HSV
    // split image to H,S and V images
    split(hsv,slices); // rozdeleni do 3 slozek
    //slices[0].copyTo (hue); // get the hue channel
    //slices[1].copyTo(sat); // get the sat channel
    slices[2].copyTo(val); // get the V channel
    
    threshold (val, out_img, high_val,255, CV_THRESH_BINARY); //odriznout vsechny pixely s nizsi hodnotou naz na posuvniku "high_val" - cernobili vystup(1/0)

    Mat element(10,10,CV_8U,Scalar(1));
    erode(out_img,out_img,element); // smazat mrnave plosky
    return(out_img);
}

Mat brightest(Mat process_img)
{
    /// Localizing the best match with minMaxLoc
    double minVal;
    double maxVal;
    Point minLoc;
    Point maxLoc;
    Point matchLoc;
    Mat hsv, slices[3], hue, sat, val;

    cvtColor(process_img, hsv, CV_RGB2HSV); // prevedeni z RGB do HSV
    // split image to H,S and V images
    split(hsv,slices); // rozdeleni do 3 slozek
    //slices[0].copyTo (hue); // get the hue channel
    //slices[1].copyTo(sat); // get the sat channel
    slices[2].copyTo(val); // get the V channel
    
    //threshold (val, val, low_val,255, THRESH_TOZERO); //odriznout vsechny pixely s nizsi hodnotou naz na posuvniku "high_val" - odstiny sedi na vystupu

    //imshow("val",val);
    minMaxLoc( val, &minVal, &maxVal, &minLoc, &maxLoc, Mat()); //lokalizovat maximum

    matchLoc = maxLoc;
    
    if(maxVal > low_val) //pokud bude nejvyssi zmerena hodnota vyssi nez nejnizsi dovolena
    {
        if(gui == true)rectangle( input_img, matchLoc, Point( matchLoc.x + 10, matchLoc.y + 15), Scalar(255,50,0), 2, 8, 0 );
        if(gui == true)rectangle( val, matchLoc, Point( matchLoc.x + 10 , matchLoc.y + 15 ), Scalar(0,50,255), 2, 8, 0 );
		cout << "Nalezeno: " << matchLoc.x << "x" << matchLoc.y << endl;
    }
    else
    {
		cout << "Nenalezeno" << endl;
    }
    return(val);
}

Mat thresholded_biggest(Mat process_img)
{
	Mat threshed, threshed_contours;
	vector<vector<Point> > contours;
	vector<Vec4i> hierarchy;

	///Threshold image
	threshed = threshold_input(process_img);  //odriznout vsechny pixely s nizsi hodnotou naz na posuvniku "high_val"
	threshed.copyTo(threshed_contours);
	
	/// Find contours
	findContours(threshed_contours, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) ); //najit hrany vsechny bile fleky

	/// Get the moments
	vector<Moments> mu(contours.size() );
	for( uint32_t i = 0; i < contours.size(); i++ )
	{
		mu[i] = moments( contours[i], false );
	}

	///  Get the mass centers:
	/* najit stredy vsech fleku */
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
	if(contours.size() > 0) //pokud byl nejaky flek nalezen
	{
		Scalar color = Scalar(255, 0, 0); //vyber barvy
		// drawContours( input, contours, i, color, 2, 8, hierarchy, 0, Point() );
		circle( input_img, mc[contours.size()-1], 4, color, -1, 8, 0 ); //stredova tecka
		rectangle( input_img, boundRect[contours.size()-1].tl(), boundRect[contours.size()-1].br(), color, 2, 8, 0 ); //obdelnik

		circle( threshed, mc[contours.size()-1], 4, color, -1, 8, 0 ); //stredova tecka
		rectangle( threshed, boundRect[contours.size()-1].tl(), boundRect[contours.size()-1].br(), color, 2, 8, 0 ); //obdelnik

		stringstream ss;
		ss << "X:"<< (int)mc[contours.size()-1].x << " Y:" << (int)mc[contours.size()-1].y << " - Candle:" << contours.size()-1 << "\n";

		putText(input_img, ss.str(), Point2f(mc[contours.size()-1].x +10 , mc[contours.size()-1].y +30), CV_FONT_HERSHEY_COMPLEX, 0.5, Scalar::all(255), 1, 8, false );
		//cout << mc[i].x << ", " << mc[i].y << endl;
	 }
	 
	 /* adaptivni prizpusobeni citlivosti */
	 if(contours.size() > 1)high_val++;
	 if(contours.size() == 0 && high_val > 150)high_val--;
	 
	 stringstream ss;//create a stringstream
	 ss << high_val << "\n";//add number to the stream

	 putText(input_img, ss.str(), Point2f(20 , 20), CV_FONT_HERSHEY_COMPLEX, 0.5, Scalar::all(255), 1, 8, false ); //vypsani aktualni citlivosti
	 
	 
	/*line( input_img, Point(0, 120), Point(640, 120), Scalar(255,50,0), 2, CV_AA);
	line( input_img, Point(0, 40), Point(640, 40), Scalar(0,50,255), 2, CV_AA);*/
	
	return(threshed);
}
Mat templ_matching(Mat process_img)
{	
	int match_method = 0;
	/// Source image to display
    Mat templ,result;
    
    templ = imread( "candle.png",1 );  //obrazek pro porovnavani



    threshold (process_img, process_img, low_val,255, THRESH_TOZERO); //odriznout vsechny pixely s nizsi hodnotou naz na posuvniku "high_val" - odstiny sedi na vystupu

    /// Create the result matrix
    /* vytvoreni matice pro vystup */
    int result_cols =  process_img.cols - templ.cols + 1;
    int result_rows = process_img.rows - templ.rows + 1;

    result.create( result_cols, result_rows, CV_32FC1 );

    /// Do the Matching and Normalize
    /* vytvorit pravdepodobnostni obrazek*/
    matchTemplate( process_img, templ, result, match_method );
    normalize( result, result, 0, 1, NORM_MINMAX, -1, Mat() );

    /// Localizing the best match with minMaxLoc
    double minVal;
    double maxVal;
    Point minLoc;
    Point maxLoc;
    Point matchLoc;

    minMaxLoc( result, &minVal, &maxVal, &minLoc, &maxLoc, Mat() );

    /// For SQDIFF and SQDIFF_NORMED, the best matches are lower values. For all the other methods, the higher the better
    if( match_method  == CV_TM_SQDIFF || match_method == CV_TM_SQDIFF_NORMED )
    {
        matchLoc = minLoc;
        /* cim tmavsi tim vetsi shoda*/
    }
    else
    {
        matchLoc = maxLoc;
    }

    /// Show me what you got
    if(maxVal > 0)
    {
        if(gui == true)rectangle( input_img, Point( (matchLoc.x*process_img.cols)/(process_img.cols-templ.cols) , (matchLoc.y*process_img.rows)/(process_img.rows-templ.rows)), Point( (matchLoc.x*process_img.cols)/(process_img.cols-templ.cols) + 10, (matchLoc.y*process_img.rows)/(process_img.rows-templ.rows) + 15), Scalar(255,50,0), 2, 8, 0 );
        if(gui == true)rectangle( result, matchLoc, Point( matchLoc.x + 10 , matchLoc.y + 15 ), Scalar(0,50,255), 2, 8, 0 );
    }
    else
    {
        
    }
	return(result);
}
