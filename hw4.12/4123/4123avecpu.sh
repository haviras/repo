#!/bin/bash
#aveCPU
HME='/home/haviras/hw4.12/4123'
vmstat 1 15 | awk '{print $13, $14}'  > $HME/4123cpu.tmp





AVECPUUS=`awk 'BEGIN{sum=0}{sum+=$1}END{print sum}' /$HME/4123cpu.tmp`
AVECPUUS=$( bc <<< "scale=2;($AVECPUUS)/15")
echo "Average value for user load CPU is: "$AVECPUUS | logger -t 4123tag


AVECPUSY=`awk 'BEGIN{sum=0}{sum+=$2}END{print sum}' /$HME/4123cpu.tmp`
AVECPUSY=$( bc <<< "scale=2;($AVECPUSY)/15")
echo "Average value for system Load CPU is: "$AVECPUS | logger -t 4123tag
rm /$HME/4123cpu.tmp




