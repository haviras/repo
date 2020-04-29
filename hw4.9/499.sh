#/bin/bash
DATE=`date`
echo 'base view: ' $DATE
DATE=${DATE::${#DATE}-8}
DAY=${DATE::${#DATE}-9} 
DAY=`echo $DAY| cut -c 8-`
MONTH=${DATE::${#DATE}-12}
MONTH=`echo $MONTH| cut -c 4-`
WDAY=${DATE::${#DATE}-16}
TIME=`echo $DATE | cut -c 12-`

echo 'changedview: '$WDAY $DAY $MONTH $TIME

