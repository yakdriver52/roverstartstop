#!/bin/bash
#THIS FILE IS REPLACES rosstart.sh
. ./config.sh

. /opt/ros/melodic/setup.bash
#. ~/mavros/devel/setup.bash  MAVROS WILL NOT BE NEEDED

echo "starting roscore daemon"
screen -dmS roscore roscore ### named "roscore"
sleep 2

echo "Starting ros data log on rover."
screen -dmS rosrecord rosbag record -a ### named "rosrecord"
if [ $SIMULATED == "0" ];
then
  echo "Opening serial port for rover C2."
    #screen -dmS mavrosrover roslaunch mavros rover.launch #& ### named "mavrosrover" ////// THIS WILL BE REPLACED WITH SERIAL. MAVROS NOT REQUIRED
    screen -dmS serialrover ping 1.1.1.1 #this is a test
fi

echo "${green}Good to go!${reset}"

exit 0
