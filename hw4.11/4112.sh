#/bin/bash
CNT1=$(ls ~/ -R | sed '/^$/d' | sed '/\//d' | wc -l)
CNT2=$(find ~ -type f -name ".*" | wc -l)



echo "Regular files: " $CNT1
echo "Hidden files: " $CNT2

