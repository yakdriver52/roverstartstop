#!/bin/bash

# gcstartstop V2
# Created by Alayna Ivan, alayna.ivan@hotmail.com, 10/23/2019
# Copyright VersaTOL, LLC 2019

. ./config.sh
. /opt/ros/melodic/setup.bash

### NOT NEEDED FOR CURRENT ROVER SETUP
#ps -ef|grep gstd|grep -v grep >/dev/null
#if [ $? -gt 0 ];
#then
  #echo "Starting Gstreamer Daemon."
 # nohup /usr/local/bin/gstd -a $SERVER_IP >/dev/null 2>/dev/null &
#fi

. ~/mavros/devel/setup.bash

echo "starting roscore daemon"
screen -dmS roscore "./roscore.sh" ### named "roscore"
sleep 2

if [ $SIMULATED == "0" ];
then
  echo "Launching Joystick interface."
    screen -dmS rosjoy "./joy.sh"
fi

exit 0