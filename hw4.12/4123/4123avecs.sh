#!/bin/bash
#aveCS
HME=/home/haviras/hw4.12/4123
cd $HME
vmstat 3 10 | awk '{print $12}'  > ./4123cs.tmp


AVECS=`awk 'BEGIN{sum=0}{sum+=$1}END{print sum}' ./4123cs.tmp`
AVECS=$( bc <<< "scale=2;($AVECS)/10")
echo "Average value for context switches is: "$AVECS | logger -t 4123tag
rm ./4123cs.tmp




