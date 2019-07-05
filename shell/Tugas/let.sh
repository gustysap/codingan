#!/bin/bash

echo -e "maungitung? masukin angka pertama?"
read pertama

echo -e "Masukin angka kedua?"
read kedua

echo -e "mau diapain kali tambah kurang bagi?"
read perintah

let jumlah=$pertama$perintah$kedua
echo "$pertama$perintah$kedua=$jumlah"
