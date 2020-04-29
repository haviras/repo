#/bin/bash

if [ $# != 2 ] ; then 
  echo  "too many or not enough arguments"
exit 1
fi

re='^[0-9]+$'
if ! [[ $1 =~ $re ]]
  then ( echo "error: first argument is not a digit")
exit 2
fi
if ! [[ $2 =~ $re ]]
  then ( echo "error: second argument is not a digit")
exit 3
fi


if [ $1 -gt $2 ] ; then
 echo "argument $1 bigger than all"
else
 echo "argument $2 bigger than all"
exit 0 
fi

