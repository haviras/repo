#/bin/bash

re='^[0-9]+$'
until [[ $a =~ $re ]];
  do
    echo  "enter a:"
    read a
    if ! [[ $a =~ $re ]]
    then (echo "error: Not a number")
 fi

done


until [[ $b =~ $re ]];
  do
    echo  "enter b:"
    read b

 if ! [[ $b =~ $re ]]
    then (echo "error: Not a number")
 fi

  done
until [[ $c =~ $re ]];
  do
    echo  "enter c:"
    read c

 if ! [[ $c =~ $re ]]
    then (echo "error: Not a number")
 fi



  done


let d=$a+$b
echo "result is: "$d"/"$c
