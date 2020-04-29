#/bin/bash

echo $PATH
echo $PATH | sed 's/^.*://'
echo $PATH | awk -F ':' '{print $NF}'
echo $PATH | sed -e s/:/\\n/g | tail -n 1

echo "someting strange"
echo $PATH > tmp4911.txt && echo 's/^.*://g
.
w
q
' | ed tmp4911.txt 2>/dev/null && rm tmp4911.txt
