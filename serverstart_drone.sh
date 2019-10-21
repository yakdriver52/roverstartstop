#!/bin/bash
### unedited from origional code

. ./config.sh

ps -ef|grep gstd|grep -v grep >/dev/null
if [ $? -gt 0 ];
then
  echo "Starting Gstreamer Daemon."
  nohup /usr/local/bin/gstd -a $SERVER_IP >/dev/null 2>/dev/null &
fi

exit 0