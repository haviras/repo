#/bin/bash
while :
do
LASTUSR=$(cat UID.txt |  tail  -1)
NEWUSR=$( awk -F":" '{ print $1, $3 }' /etc/passwd  | tail -1)
echo $LASTUSR
echo $NEWUSR
[[ $NEWUSR == $LASTUSR ]] 
	CHECK=$(echo $?)
echo $CHECK
	if [[ $CHECK == 1 ]] 
    		then  (
		DATE=`date`
		echo "New User was added at $DATE"  >> UID.txt
		awk -F":" '{ print $1, $3 }'  /etc/passwd | tail -1 >> UID.txt
	    )
	fi
sleep 30
done

