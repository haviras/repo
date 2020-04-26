#!/bin/bash
filename=hometown.txt
pattern1=haviras
pattern2=gobzavr
awk "{ gsub(/$pattern1/, \"$pattern2\", \$0); print }" $filename >> hometown482b.txt

