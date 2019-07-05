#!/bin/bash

function menu(){
clear
echo "Apa yang ingin engkau lakukan ?"
echo "1. string -z?"
echo "2. string ==?"
echo "3. direktori -d?"
echo "4. file -f?"
echo "5. logika -o?"
echo "6. logika -a?"
echo "7. logika !?"
echo "Jadi mau pilih yang mana :"
read perintah;

if [ $perintah = 1 ] ; then
	echo -n "Karakter Yang Ingin Dimasukan?"
	read stringpertama
	test -z $stringpertama
	echo "maka stringnya adalah $?"
balik

elif [ $perintah = 2 ] ; then
	echo -n "Karakter pertama yang ingin dimasukan?"
	read pertamasamadengan
	echo -n "Karakter kedua yang ingin dimasukan?"
	read keduasamadengan
	test $pertamasamadengan == $keduasamadengan
	echo "maka stringnya adalah $?"
balik

elif [ $perintah = 3 ] ; then
	echo -n "Direktori yang ingin diketahui?"
	read direktori
	test -d $direktori
	echo "maka hasilnya adalah $?"
balik

elif [ $perintah = 4 ] ; then
	echo -n "File yang ingin diketahui?"
	read file
	test -f $file
	echo "maka hasilnya adalah $?"
balik

elif [ $perintah = 5 ] ; then
	echo -n "karakter pertama yang ingin dimasukkan"
	read logik1
	echo -n "karakter kedua yang ingin dimasukkan?"
	read logik2
	test $logik1 -o $logik2
	echo "maka hasilnya adalah $?"
balik

elif [ $perintah = 6 ] ; then
	echo -n "karakter pertama yang ingin dimasukkan"
        read logika1
        echo -n "karakter kedua yang ingin dimasukkan?"
        read logika2
        test $logika1 -a $logika2
        echo "maka hasilnya adalah $?"
balik

elif [ $perintah = 7 ] ; then
	echo -n "karakter pertama yang ingin dimasukkan"
        read logikas1
        echo -n "perlu pakai logika lagi -o atau -a ?"
	read logika
	echo -n "karakter kedua yang ingin dimasukkan?"
        read logikas2
	test ! $logikas1 $logika $logikas2
        echo "maka hasilnya adalah $?"
balik

fi

}
function balik(){
echo " Mau Balik atau enggak sob? (ya/tidak) "
read balik;
if [ $balik = ya ];
then
	menu
else
exit
fi
menu
}
menu
