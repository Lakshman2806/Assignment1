#!/bin/bash

read str
len=${#str}



for ((i=$len - 1; i >= 0; i--))
do
rev=$rev${str:$i:1}
done
echo $rev

for ((i=$len-1;i>=0;i--))
do
    char=${str:$i:1}
    char=$(echo "$char" | tr "0-9a-z" "1-9a-z_")
    seq_str=$seq_str$char
done

echo "$seq_str"


read str2
len=${#str2}
let z=len/2
((z--))

for ((i=$z ; i>=0 ; i--))
do
rev2=$rev2${str2:$i:1}
done
for ((i=$z + 1;i<len;i++))
do
rev2=$rev2${str2:$i:1}
done
echo $rev2