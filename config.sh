#!/bin/bash

# VEHICLE_IP=192.168.1.10 ??????????? richard's stuff
# VEHICLE_USER=root ?????????????? richard's stuff
# VEHICLE_TYPE=drone
VEHICLE_TYPE=rover
VEHICLE_IP=192.168.1.32
VEHICLE_USER=gcs

#SERVER ON DRONE SUPPORTS VIDEO AND TELEOP
#SERVER ON ROVER SUPPORTS ROS JOY
SERVER_IP=192.168.1.32
SERVER_USER=gcs

ENCODER_IP=192.168.1.45
GSTD_CLIENT="gstd-client -q -a $SERVER_IP"
# Change this to zero when using an actual vehicle
SIMULATED=1
# Only one of these should be uncommented
ENCODER=axis
# ENCODER=nvidia

red=`tput -Txterm-256color setaf 1`
green=`tput -Txterm-256color setaf 2`
reset=`tput -Txterm-256color sgr0`
