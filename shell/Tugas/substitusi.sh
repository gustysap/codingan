#!/bin/bash

echo -e "bilangan pertama"
read pertama

echo -e "bilangan kedua"
read kedua

modul=$(($pertama%$kedua));

echo "$pertama % $kedua = $modul"
