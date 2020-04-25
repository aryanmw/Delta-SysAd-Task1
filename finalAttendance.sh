#!/usr/bin/bash

#Created by Aryan Wadhavekar 20/04/2020 Task6

FILE_LOC=/home/aryanw/Downloads/attendance.txt

cat $FILE_LOC | awk '{ print substr($1,2,10) " " $2 " " $3 }' > temp.txt

sudo rm /home/ChiefCommander/attendance_report.txt
CURR_DATE=$(date +"%Y-%m-%d")
echo $CURR_DATE
cat temp.txt | awk '{ print $1 " " $2 " " $3 }' | awk '$1 <= \"$CURR_DATE\" '

