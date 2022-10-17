#!/bin/bash
cat Property_Tax_Roll.csv|grep "MADISON SCHOOLS"|cut -d , -f7 |{ sum=0; num=0; while read n; do sum=$(($sum+$n)); num=$(($num+1)); done; echo sum=$sum,average=$(($sum/$num));}
