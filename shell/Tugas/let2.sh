#!/bin/bash

echo -e "bilangan pertama"
read pertama

echo -e "bilangan kedua"
read kedua

echo -e "tambah kurang bagi kali?"
read perintah

let jumlah=$pertama$perintah$kedua

echo "$pertama$perintah$kedua=$jumlah"
