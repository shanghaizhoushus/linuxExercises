#!/bin/bash                                                                     

if [[ $# -ne 2 ]]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit 0
fi

col=$1
data=$2


cat $data |
cut -d , -f $col |
tail -n +2 |
{ sum=0;
      num=0;
      while read n;do
          sum=$(($sum+$n));
          num=$(($num+1));
      done;
      echo average=$(($sum/$num));}
