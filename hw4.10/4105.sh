#/bin/bash

echo There were $# parameters passed.


re='^[0-9]+$'

for i
  do
	if ! [[ $i =~ $re ]]
	   then (
	   echo "error: $i argument is not a digit"
	   exit )
	fi


  let SQ=$i**2

echo "Square of $i: $SQ"

done
