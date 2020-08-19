#!/bin/bash
file=file.txt
while read line
  do
    line=`expr $line + 7`
    echo "$line"
  done < $file
