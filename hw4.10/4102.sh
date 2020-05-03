#/bin/bash
   sudo mkdir -p /home/user/tmp/ 
   sudo chmod 777 /home/user/tmp/ 
while :
do
  date >  /home/user/tmp/out.txt
  CNT=$(ps -e | wc -l)
#delete header string
 CNT=$(echo "$CNT-1" | bc)
  echo "Counter process: " $CNT >>  /home/user/tmp/out.txt
 sleep 60
done


