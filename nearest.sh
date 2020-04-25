#!/usr/bin/bash

#Created by Aryan Wadhavekar 21/04/2020 Task7


POS_FILE=/home/aryanw/Downloads/sysad-task1-position.txt

cat $POS_FILE | awk '{ print substr($1,2,10) " " $2 " " substr($3,4) " " substr($4,4) }' | awk 'index($3,"28.")' | awk 'index($4,"77.")' >> editedPos.txt



coords=$(cat editedPos.txt | awk '{ print $3 }' )

for c in $coords
do
	S=$(cat editedPos.txt | grep $c | awk '{ print $4 }')
	DATE=$(cat editedPos.txt | grep $c | awk '{ print $1 }')
	USER=$(cat editedPos.txt | grep $c | awk '{ print $2 }')
	ATT=$(cat attendance.txt | grep $DATE |  grep $USER' ' | awk '{ print $3 }')
	if [ $ATT == 'YES' ]
	then
		echo $DATE $USER $c $S >> presentneardelhi.txt
	fi
	

done


tempN_coord=$(cat presentneardelhi.txt | awk '{ print $3 }')
for northInFile in $tempN_coord
do
	EDELHI=$(cat presentneardelhi.txt | grep $northInFile | awk '{ print $4 }')
	xCood=$(expr 28.70410-$northInFile | bc)
	sqx=$(expr $xCood*$xCood | bc)
	yCood=$(expr 77.10250-$EDELHI | bc)
	sqy=$(expr $yCood*$yCood | bc)
	tot=$(expr $sqx+$sqy | bc)
	DELHIu=$(cat presentneardelhi.txt | grep $northInFile | awk '{ print $2 }')
	DELHId=$(cat presentneardelhi.txt | grep $northInFile | awk '{ print $1 }')
	echo $DELHId $DELHIu $tot >> myTemp.txt
done

sudo touch /home/ChiefCommander/nearest_10.txt
sudo chmod u+rwx,g+rwx /home/ChiefCommander/nearest_10.txt
sudo chown aryanw /home/ChiefCommander/nearest_10.txt
sudo cat myTemp.txt | sort -n -k 3,3 | head -n 10 | awk '{ print $1 " " $2 }' >> /home/ChiefCommander/nearest_10.txt
rm presentneardelhi.txt
rm myTemp.txt
rm editedPos.txt
