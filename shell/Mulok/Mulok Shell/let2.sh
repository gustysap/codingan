#!/bin/bash

echo "Input your first number"
read x;
echo "Input your second number"
read y;
echo "Mau di tambah/dikurang/dikali atau di bagi?"
read tugas;

let plus=$x+$y
let min=$x-$y
let kali=$x$y
bagi=`expr $x / $y`
read bagi;

if [ $tugas = + ] ; then
	echo "$x+$y=$plus"
elif [ $tugas = - ] ; then
	echo "$x-$y=$min"
elif [ $tugas = * ] ; then
	echo "$x*$y=$kali"
elif [ $tugas = / ] ; then
	echo "$x/$y=$bagi"
else
	echo "Masukan lagi"
fi

