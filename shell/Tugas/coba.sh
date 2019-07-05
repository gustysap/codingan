#!/bin/bash

pass="ganteng";
echo "Mau masuk harap masukan password :? ";
read password;
clear
if [ $password == $pass ];
then
echo "Welcome `whoami`";
else
echo " Maaf Password yang anda masukan salah";
fi
