# RaspyUtils
#### Utility for the raspberry pi

These shell scripts can be used for monitoring some parameters of your Raspberry Pi
-------------------------------------------------------------
## Temperature monitor

This is a simple script that you can use for monitor the temperature of your Raspberry pi.
The script write data on a log file saved into the log folder. The other script called log-cleaner.sh is used for make an history of the logfiles produced by temp.sh 
The process can be scheduled periodically using crontab with this simple settings:

#Temperature monitor (every 10 minutes)
*/10 * * * *  /home/pi/scripts/utility/temperature/temp.sh

#Temperature log cleaner (every first day of month)
0 0 1 * *  /home/pi/scripts/utility/temperature/log-cleaner.sh
