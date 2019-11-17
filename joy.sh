#!/bin/bash

# gcstartstop V2
# Created by Alayna Ivan, alayna.ivan@hotmail.com, 10/23/2019

. ./config.sh
. /opt/ros/melodic/setup.bash
. ~/mavros/devel/setup.bash
ROS_MASTER_URI="http://$SERVER_IP:11311/"
ROS_IP=$SERVER_IP
ROS_HOSTNAME=$SERVER_IP
rosparam set joy_node/dev "/dev/input/js1"
sleep 2
rosrun joy joy_node