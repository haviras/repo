#/bin/bash
DIR=`pwd`
DATE=`date`
DATE=${DATE::${#DATE}-8}
TIME=`echo $DATE | cut -c 12-`
echo "I went to the directory " $PWD "at " $TIME "with UID:"$UID
