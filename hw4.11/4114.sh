#/bin/bash

IAM=$(whoami)
IAMPROC=$(ps aux | awk  -v iam="$IAM" '$1==iam' | wc -l)




PROCROOT=$(ps aux | awk '($1 == "root")' | wc -l)

echo "Process under " $IAM" :" $IAMPROC
echo "Process under root:" $PROCROOT
