#/bin/bash

re='quit'
until [[ $a =~ $re ]];
  do
    echo  "enter word:"
    read a
    if ! [[ $a =~ $re ]]
    then (echo "Your input is: $a. Enter someting else")
 fi

done


echo "bye bye"
