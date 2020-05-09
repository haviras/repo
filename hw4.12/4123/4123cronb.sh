#!/bin/bash
HME=/home/haviras/hw4.12/4123

cd $HME
[ -d ./memory/ ] || mkdir -p ./memory/
DATE=`date '+%Y-%m-%d-%H-%M'`



./4123avecpu.sh
./4123avecs.sh
./4123mem.sh
./4123hdd.sh


echo $DATE >> ./memory/stat
free -m | sed -e "1d" | head -1 >> ./memory/stat 
cat /var/log/syslog | tail -20 | grep 4123tag  >> ./memory/stat



