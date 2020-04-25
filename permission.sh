#!/usr/bin/bash

#created by Aryan Wadhavekar

sudo chmod g-rwx,o-rwx ChiefCommander

sudo chmod g+rwx,o-rwx ArmyGeneral
sudo chown ChiefCommander ArmyGeneral

sudo chmod g+rwx,o-rwx NavyMarshal
sudo chown ChiefCommander NavyMarshal

sudo chmod g+rwx,o-rwx AirForceChief
sudo chown ChiefCommander AirForceChief

i=1
while [ $i -le 50 ]
do 
	sudo chmod g+rwx,o-rwx Army$i
	sudo chown ArmyGeneral Army$i
	((i++))
done

j=1
while [ $j -le 50 ]
do
	sudo chmod g+rwx,o-rwx Navy$j
	sudo chown NavyMarshal Navy$j
	((j++))
done

k=1
while [ $k -le 50 ]
do
	sudo chmod g+rwx,o-rwx AirForce$k
	sudo chown AirForceChief AirForce$k
	((k++))
done
