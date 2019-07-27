#include <ros/ros.h>
#include "opencv2/opencv.hpp"
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>

using namespace cv;
void imageCallback(const sensor_msgs::ImageConstPtr& msg){
    VideoCapture cap;
    // open the default camera, use something different from 0 otherwise;
    // Check VideoCapture documentation.
//    if(!cap.open(0))
//        return 0;
//    for(;;)
//    {
      cv::Mat frame;
      cap >> frame;
//      if( frame.empty() ) break; // end of video stream
//      imshow("this is you, smile! :)", frame);
      imshow("view", cv_bridge::toCvShare(msg, "bgr8")->image);
      
//      if( waitKey(10) == 27 ) break; // stop capturing by pressing ESC 
//    }
    // the camera will be closed automatically upon exit
    // cap.close();
//    return 0;
}


int main(int argc, char **argv)
{
    ros::init(argc, argv, "image_listener");
    ros::NodeHandle nh;
//    cv::namedWindow("view");
    cv::startWindowThread();
    image_transport::ImageTransport it(nh);
    image_transport::Subscriber sub = it.subscribe("/usbcam/image_raw", 1, imageCallback);
    ros::spin();

}

