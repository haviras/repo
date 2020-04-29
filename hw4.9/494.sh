#/bin/bash
tree -da > tmp494.txt
touch 494.txt
MYDIRS=`tail -1 tmp494.txt`
MYDIRS=`echo $MYDIRS | sed 's/[^0-9]*//g'`
DIR=`pwd`
echo "In dir" $DIR": "$MYDIRS "subdirs" > 494.txt
sed -i '1d;$d' tmp494.txt
cat -n tmp494.txt > tmp1494.txt
cat tmp1494.txt >> 494.txt
sed -i '$d' 494.txt
rm tmp494.txt tmp1494.txt
