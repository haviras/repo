#/bin/bash
echo "А*х+В=C"
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

#x=$((($c-$b)/$a))
#echo $x


myeq () {

x=$(bc <<< "scale=6;($3-$2)/$1")
echo $x

}


myeq $a $b $c 

