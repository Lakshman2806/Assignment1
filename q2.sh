#!/bin/bash

file=$1

while read line
do 
  
  echo $line | awk 'BEGIN{FS="~"} {printf("%s said that \"%s\"\n ",$2, $1)}' >> speech.txt

done <$1
