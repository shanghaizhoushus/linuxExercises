#!/bin/bash

if [[ $# -eq 1 ]]; then
    col=$1
    file=/dev/stdin
elif [[ $# -eq 2 ]]; then
    col=$1
    file=$2
else
    echo "usage: $0 <column> [file.csv]" 1>&2
    exit 0
fi


cat $file |
    cut -d , -f $col |
    tail -n +2 |
    { sum=0;
      num=0;
      while read n;do
          sum=$(($sum+$n));
          num=$(($num+1));
      done;
      echo average=$(($sum/$num));}
