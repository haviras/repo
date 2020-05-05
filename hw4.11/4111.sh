#/bin/bash
du -a /usr  | sort -n -r | awk '$1>20000 || NR==1' | tail -n +2
