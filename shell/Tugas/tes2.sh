pass="ganteng";
echo  "Harap masukan password !!! ";
read password;
clear
if [ $password == $pass ];
then
dialog --title "password anda benar " \
       --backtitle "TESTIS " \
       --msgbox "selamat belajar script bourne shell" 10 40
else

dialog --title "password anda salah " \
       --backtitle "TESTIS " \
       --msgbox "selamat belajar script bourne shell" 10 40


exit 0
fi 

