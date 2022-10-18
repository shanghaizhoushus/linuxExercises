#!/bin/bash
k=0
for i in 1{1,0}{1,0}{1,0};
do k=$(($k+$i));
done
echo $k
