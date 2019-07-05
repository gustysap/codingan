#!/bin/bash

echo -n "karakter pertama yang ingin dimasukkan"
read pertama

echo -n "karakter kedua yang ingin dimasukkan?"
read kedua


echo -n "logika yang ingin dipakai? -o atau -a ?"
read logika
`test $pertama $logika $kedua`

echo "maka hasilnya adalah $?"
