#!/bin/bash

# gcstartstop V2
# Modified by Alayna Ivan, alayna.ivan@hotmail.com, 10/23/2019
# Copyright VersaTOL, LLC 2019

#THIS FILE IS REPLACES rosstart.sh

. ./config.sh

. /opt/ros/melodic/setup.bash
. ~/mavros/devel/setup.bash

##echo "Starting ros data log on rover."
##screen -dmS rosrecord rosbag record -a ### named "rosrecord"
if [ $SIMULATED == "0" ];
then
  echo "Opening serial port for rover C2."
    sudo screen -dmS mavrosrover "./mavros.sh" #& ### named "mavrosrover" ////// THIS WILL BE REPLACED WITH SERIAL. MAVROS NOT REQUIRED
    #screen -dmS serialrover ping 1.1.1.1 #this is a test
fi

echo "${green}Good to go!${reset}"

exit 0

