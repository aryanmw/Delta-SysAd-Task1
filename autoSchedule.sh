#!/usr/bin/bash

#Created by Aryan Wadhavekar 24/04/2020

LOG_FILE=/home/aryanw/Downloads/sysad-task1-position.txt
cat  $LOG_FILE | grep "$(date +"%Y-%m-%d")" >> temp.txt
cat temp.txt | awk '{ print $2 }' >> users.txt
username=$(cat users.txt) 
for user in $username
do
	sudo touch /home/$user/post_alloted.txt
	sudo chmod u+rwx,g+rwx,o-rwx /home/$user/post_alloted.txt
	sudo chown ChiefCommander /home/$user/post_alloted.txt
	sudo cat temp.txt | grep $user | awk '{ print $1 "  " $3 }' >> /home/$user/post_alloted.txt
done
rm temp.txt
rm users.txt
