#THIS FILE IS REPLACED BY start_$VEHICLE_TYPE.sh
#!/bin/bash

. ./config.sh

. /opt/ros/kinetic/setup.bash

echo "Starting ROS core on VEHICLE."
nohup roscore >/dev/null 2>/dev/null &
if [ $SIMULATED == "0" ];
then
  echo "Launching camera and PX4."
  roslaunch realsense2_camera rs_camera.launch &
  roslaunch mavros px4.launch &
fi
echo "Starting rosbag on VEHICLE."
nohup rosbag record -a >/dev/null 2>/dev/null &

echo "${green}Good to go!${reset}"

exit 0
