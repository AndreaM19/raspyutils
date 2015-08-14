#!/bin/sh
echo "----------------------"
echo "Temp Monitor"
echo "----------------------"
ALERT=false
WARNING=""
NOW=$(date +"%m-%d-%Y-%T")
TEMP=$(cat /sys/class/thermal/thermal_zone0/temp)
TEMP_deg=$(($TEMP/1000))
if [ "$TEMP_deg" -ge 70 ];then
	echo "Temperature too high!!"
	ALERT=true
elif [ "$TEMP_deg" -ge 61 ];then
	echo "Tempersture warning"
	WARNING="--> WARNNG!!"
else
	echo "Temperature OK"
fi

MSG="$NOW - Raspberry Pi temperature: $TEMP_deg° $WARNING"
echo $MSG >> /home/pi/scripts/raspyutils/temperature/log/log.txt
echo $MSG

# Shutdown system
if [ "$ALERT" = true ];then
	echo "System wil be shutdown now for temperature limit!!"
	sudo shutdown -h now
fi
