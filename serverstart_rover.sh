#!/bin/bash

. ./config.sh
. /opt/ros/melodic/setup.bash

### NOT NEEDED FOR CURRENT ROVER SETUP
#ps -ef|grep gstd|grep -v grep >/dev/null
#if [ $? -gt 0 ];
#then
  #echo "Starting Gstreamer Daemon."
 # nohup /usr/local/bin/gstd -a $SERVER_IP >/dev/null 2>/dev/null &
#fi


if [ $SIMULATED == "0" ];
then
  echo "Launching Joystick interface."
    screen -dmS rosjoy rosrun joy joy_node
fi

exit 0