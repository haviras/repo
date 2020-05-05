#/bin/bash


re='^[0-9]+$'

 if ! [[ $3 =~ $re ]]
    then (echo "error: 3rd argument is not a number. Set by default 10")
 fi


grep -iRl "$1" "$2" | nl | tail -$3


#а это если надо поискать вхождение строки в конкретном файле
#grep -w "$1" $2 | nl |  tail -$3




