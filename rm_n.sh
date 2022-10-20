#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit 0
fi

dir=$1
n=$2

for file in $(find $dir -type f -size +$n"c"); do
    rm -r $file
done

