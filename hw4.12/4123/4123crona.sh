#!/bin/bash

HME=/home/haviras/hw4.12/4123

cd $HME

DATE=`date '+%Y-%m-%d-%H-%M'`

tar -cvf ./4123_"$DATE".tar ./memory/stat

rm -rf ./memory/


#Old archive rotation
find *.tar -type f -mmin +20 -delete



