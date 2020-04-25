#!/usr/bin/bash

#Created by Aryan Wadhavekar 20/04/2020 Task - 4

#Bash script for attendance by Aryan wadhavekar

LOG_FILE=/home/aryanw/Downloads/attendance.txt

cat $LOG_FILE | grep "$(date +"%Y-%m-%d")" | grep Army | grep YES | awk '{ print $2 }' > present.txt
sudo touch /home/ArmyGeneral/attendance_record.txt
sudo chmod u+rwx,g+rwx,o-rwx /home/ArmyGeneral/attendance_record.txt
sudo chown aryanw /home/ArmyGeneral/attendance_record.txt
cat present.txt > /home/ArmyGeneral/attendance_record.txt

cat $LOG_FILE | grep "$(date +"%Y-%m-%d")" | grep Navy | grep YES | awk '{ print $2 }' > navypresent.txt

FILE_LOC=/home/NavyMarshal/attendance_record.txt
sudo touch $FILE_LOC
sudo chmod u+rwx,g+rwx,o-rwx $FILE_LOC
sudo chown aryanw $FILE_LOC
cat navypresent.txt > $FILE_LOC

cat $LOG_FILE | grep "$(date +"%Y-%m-%d")" | grep Air | grep YES | awk '{ print $2 }' > airpresent.txt
AIR_LOC=/home/AirForceChief/attendance_record.txt
sudo touch $AIR_LOC
sudo chmod u+rwx,g+rwx,o-rwx $AIR_LOC
sudo chown aryanw $AIR_LOC
cat airpresent.txt > $AIR_LOC

rm present.txt
rm navypresent.txt
rm airpresent.txt
