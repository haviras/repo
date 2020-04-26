#!/bin/bash
filename=hometown.txt

awk '{ if (NF > 0 && $9 != "." && $9 != ".." ) {print $6 " " $7 " " $8 " " $9}}' $filename | grep '[a-zA-Z0-9]' >> hometown484.txt





