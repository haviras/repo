#/bin/bash
ps aux --sort=-pmem | head -3 | tail -2 > 4104.txt

echo "top memory:"
cat 4104.txt
PROCID=`cat 4104.txt | head -1 | awk '{print $2}' | grep '[0-9]'`
PRT=`cat 4104.txt | head -1 | awk '{print $3}' | grep '[0-9]' | cut -c 3-`
PRT=$(echo "$PRT+2" | bc)
sudo renice  $PRT -p $PROCID


rm 4104.txt



