#!/bin/bash

echo -n "Expr pertama yang ingin dimasukkan: ? "
read pertama

echo -n "Expr kedua yang ingin dimasukkan: ?"
read kedua

echo -n "logika yang ingin dipakai? -o atau -a?"
read logika

`test ! $pertama $logika $kedua`

echo "maka hasilnya jika ditambahkan ! adalah $?"
