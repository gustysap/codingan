#!/bin/bash

echo -n "Bilangan Pertama?"
read pertama

echo -n "Bilangan Kedua?"
read kedua
echo -n "Perintah?"
read perintah
`test $pertama $perintah $kedua`
echo $?
