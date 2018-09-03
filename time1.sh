#!/bin/bash
m=$(date "+%M")
echo "$m */1 * * * export DISPLAY=:0.0 && /home/dj/Shell/time.sh" > /home/dj/Shell/timecron
#echo "123321" | sudo -S service cron start
crontab /home/dj/Shell/timecron
echo "123321" | sudo -S service cron restart
