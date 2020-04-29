#/bin/bash

if [ $# != 3 ] ; then 
  echo  "too many or not enough arguments"
exit 1
fi


re='^[0-9]+$'
if ! [[ $1 =~ $re ]]
  then ( echo "error: first argument is not a digit")
exit
fi
if ! [[ $2 =~ $re ]]
  then ( echo "error: second argument is not a digit")
exit
fi
if ! [[ $3 =~ $re ]]
  then ( echo "error: third argument is not a digit")
exit
fi

let d=$1+$2
echo "result is: "$d"/"$3
