# Webcam-Snapshot

To enable ros commands:
`source catkin_ws/devel/setup.bash` 

build the files:
`catkin_make` in the catkin_ws directory

First run `roscore`
To publish:
`rosparam set usb_cam/image_width x`
`rosparam set usb_cam/image_height y`
`rosrun usb_cam usb_cam_node ~video_device "/dev/video0"`
Where x and y is a resolution which your webcam has. (for me x = 1280 and y = 720)
Ignore: [swscaler @ 0x262f6a0] deprecated pixel format used, make sure you did set range correctly

To subscribe:
`rosrun webcam_snapshot image_subscriber`

To take snapshots and save them in /tmp/:
`rosrun webcam_snapshot take_snapshot`
`rosservice call /take_snapshot`

LIMITATION:
Since the webcam publisher opens the camera the service cannot be called at the same time.
Because, it requires to open the camera, which is already opened.
Idea: subscribribe to the pusblished webcam stream. But, I don't think a service can subscribe to a node.
