#!/bin/bash
#testlt

echo -n "Angka pertama : "
read angka1
echo -n "Angka kedua : " 
read angka2
echo -n "Perintah : "
read perintah

`test $angka1 $perintah $angka2`
echo `echo $?`
