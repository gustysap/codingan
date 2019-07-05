#!/bin/bash


echo -e "bilangan pertama?"
read pertama

echo -e "bilangan kedua?"
read kedua

bagi=`expr $pertama \* $kedua` 

echo "$pertama*$kedua=$bagi"
