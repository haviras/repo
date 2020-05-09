#/bin/bash

OLDHASH=$(cat ./4122/hash.txt)

tar -cvf ./4122/4122.tar ./4122/mf >> /dev/null
HASH=$(md5sum ./4122/4122.tar | awk '{print $1}')
echo  $HASH > ./4122/hash.txt
#echo $OLDHASH
#echo $HASH


if [[ "$HASH" ==  "$OLDHASH" ]]; then
    echo  OK
    exit
else
    echo "not Ok, starting recompilation"


pwd
rm ./4122/4122.tar -f


cd ./4122/mf && make

cd ~/hw4.12

tar -cvf ./4122/4122.tar ./4122/mf >> /dev/null

NEWHASH=$(md5sum ./4122/4122.tar | awk '{print $1}')
echo  $NEWHASH > ./4122/hash.txt

fi




