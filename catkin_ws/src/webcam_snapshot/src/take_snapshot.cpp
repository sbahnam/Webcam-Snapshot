#include "ros/ros.h"
#include "webcam_snapshot/take_snapshot.h"
#include <dirent.h>
#include <sstream>
#include "opencv2/opencv.hpp"

bool snapshot(webcam_snapshot::take_snapshot::Request &req,
        webcam_snapshot::take_snapshot::Response &res){
    
   
        
    DIR *dir;
    struct dirent *ent;
    int count_filename = 1;
    int i = 0;
    std::stringstream ss;
    std::string filename;
    if ((dir = opendir ("/tmp/")) != NULL) {
        /* print all the files and directories within directory */
        while (count_filename != 0){
            i++; //imagefiles start at "1.jpg"
            std::stringstream ss; //otherwise the next filename will be 12.jpg instead of 2.jpg
            ss << i;
            filename = ss.str() + ".jpg";
            std::cout<<filename<<std::endl;
            std::cout<<i<<std::endl;
            count_filename = 0;
            dir = opendir ("/tmp/");
            while ((ent = readdir (dir)) != NULL) {
                if (filename == ent->d_name){
                    count_filename++;
                    break;
                }
            }
            closedir (dir);
            }
        }
    ROS_INFO("Snapshot requested");
    cv::VideoCapture cap;
    if (!cap.open(0)) {
        ROS_INFO("Can not open camera (might be already in use)");
        res.confirmation = "Can not open camera (might be already in use), terminate usb_cam_node";
        return true;
    }
    cv::Mat frame;
    cap >> frame;
    if( frame.empty() ){
        res.confirmation = "Empty frame, No file is saved";
        return true;
    }
    cv::imwrite( "/tmp/"+filename, frame);
    res.confirmation = "Snapshot is saved in /tmp/" + filename;
    return true;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "take_snapshot");
    ros::NodeHandle n;
    

    ros::ServiceServer service = n.advertiseService("take_snapshot", snapshot);
    ros::spin();

    return 0;
}
