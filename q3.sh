#!/bin/bash

file=$1
printf "\nThe number of bytes in the given file is " 
wc -c < $file 
printf "\nThe number of lines in the file is "
wc -l < $file
printf "\nThe number of words in the file is "
wc -w < $file


i=1
while read line
do 
printf "\nLine no:$i -Count of words:"
echo $line | wc -w
((i++))
done <$file

cat $file | tr ' ' '\n' | awk '{!unique[$0]++} END { for (i in unique) if(unique[i]>1 && i != '\n') print "Word : " i " Count of words: " unique[i] }'


