#!/bin/bash
filename=hometown484.txt

awk '{print $4}' $filename | grep '[0-9]' >> hometown485.txt





