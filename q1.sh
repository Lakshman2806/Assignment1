#!/bin/bash

grep . $1
grep . $1 > output.txt



awk '!unique[$c]++' output.txt 

awk '!unique[$c]++' output.txt > $1 
rm output.txt

