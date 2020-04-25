#!/usr/bin/bash

USER=aryanw

/usr/bin/crontab /var/spool/cron/$USER
echo "0 0 * * *  ./autoSchedule.sh" >> /var/spool/cron/$USER
echo "0 6 * * *  ./attendance.sh" >> /var/spool/cron/$USER
echo "0 0 * * *  ./finalAttendance.sh" >> /var/spool/cron/$USER


