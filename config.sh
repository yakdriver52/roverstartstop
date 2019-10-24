#!/bin/bash

# gcstartstop V2
# Modified by Alayna Ivan, alayna.ivan@hotmail.com, 10/23/2019
# Copyright VersaTOL, LLC 2019

# VEHICLE_TYPE=drone
VEHICLE_TYPE=rover
VEHICLE_IP=192.168.1.172
VEHICLE_USER=versatol

#SERVER ON DRONE SUPPORTS VIDEO AND TELEOP
#SERVER ON ROVER SUPPORTS ROS JOY
SERVER_IP=192.168.1.172
SERVER_USER=versatol

ENCODER_IP=192.168.1.45
GSTD_CLIENT="gstd-client -q -a $SERVER_IP"
# Change this to zero when using an actual vehicle
SIMULATED=0
# Only one of these should be uncommented
ENCODER=axis
# ENCODER=nvidia

red=`tput -Txterm-256color setaf 1`
green=`tput -Txterm-256color setaf 2`
reset=`tput -Txterm-256color sgr0`
