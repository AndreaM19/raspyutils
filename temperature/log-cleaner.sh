#!/bin/sh
echo "------------------"
echo "Log cleaner"
echo "------------------"
NOW=$(date +"%m-%d-%Y")
mv /home/pi/scripts/raspyutils/temperature/log/log.txt /home/pi/scripts/raspyutils/temperature/log/log_$NOW.txt
touch /home/pi/scripts/raspyutils/temperature/log/log.txt


