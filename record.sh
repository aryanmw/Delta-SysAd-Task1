#!/usr/bin/bash

#Created by Aryan wadhavekar 21/04/2020 Task5

z=$(date -d "last week" +"%a")
case "$z" in
Mon) curr=1
;;
Tue) curr=2
;;
Wed) curr=3
;;
Thu) curr=4
;;
Fri) curr=5
;;
Sat) curr=6
;;
Sun) curr=7
esac

$1
case "$1" in
1) day=monday
   prev=1
   ;;
2) day=tuesday
   prev=2
   ;;
3) day=wednesday
   prev=3
   ;;
4) day=thursday
   prev=4
   ;;
5) day=friday
   prev=5
   ;;
6) day=saturday
   prev=6
   ;;
7) day=sunday
   prev=7
   ;;
*) echo Please enter a valid day
esac

let "req=$1-$curr"
DATE=$(date -d "last week $req days" +"%Y-%m-%d")

ATT_FILE_LOC=/home/aryanw/Downloads/attendance.txt
cat $ATT_FILE_LOC | grep $DATE | sort


