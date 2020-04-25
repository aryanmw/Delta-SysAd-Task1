#!/usr/bin/bash

#Created by Aryan Wadhavekar

echo alias userGeneration=\'./userCreation.sh\' >> ~/.bashrc
echo alias permit=\'./permission.sh\' >> ~/.bashrc
echo alias autoSchedule=\'./autoSchedule.sh\' >> ~/.bashrc
echo alias attendance=\'./attendance.sh\' >> ~/.bashrc
echo alias record=\'./record.sh\' >> ~/.bashrc
echo alias finalAttendance=\'./finalAttendance.sh\' >> ~/.bashrc
echo alias nearest=\'./nearest.sh\' >> ~/.bashrc

shopt -s expand_aliases
alias userGeneration='./userCreation.sh'
alias permit='./permission.sh'
alias autoSchedule='./autoSchedule.sh'
alias attendance='./attendance.sh'
alias record='./record.sh'
alias finalAttendance.sh='./finalAttendance.sh'
alias nearest='./nearest.sh'

