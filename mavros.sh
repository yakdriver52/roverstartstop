#!/bin/bash

# gcstartstop V2
# Created by Alayna Ivan, alayna.ivan@hotmail.com, 10/23/2019

. ./config.sh
. /opt/ros/melodic/setup.bash
. ~/mavros/devel/setup.bash
ROS_MASTER_URI="http://$SERVER_IP:11311/"
ROS_IP=$VEHICLE_IP
ROS_HOSTNAME=$VEHICLE_IP
rosrun mavros rover_serial_cmd