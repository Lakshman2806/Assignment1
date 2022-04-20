#!/bin/bash

file=$1

grep . $1 > lol.txt

while read line 
do 
  echo $line | awk 'BEGIN{FS="~"} {printf("%s said that \"%s\"\n ",$2, $1)}' >> speech.txt
done <lol.txt

rm lol.txt
