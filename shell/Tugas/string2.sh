#!/bin/bash

echo -n "Karakter pertama yang ingin dimasukan : ?"
read pertama

echo -n "Karakter kedua yang ingin dimasukan : ?"
read kedua

`test $pertama == $kedua`

echo "maka stringnya adalah $?"
