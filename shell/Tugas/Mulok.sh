#!/bin/bash
    #for loop box
    (
    for((loop=0; loop<=100; loop++))
    do
      echo "$loop %"
      sleep 0.03
    done
    ) |

    #dialogbox proses
    dialog --title "[ Sedang Memproses ]" \
          --backtitle "TKJ Production" \
          --gauge "\n Harap Menunggu ....." 10 60 0

clear
    #for file password
    OUTPUT="/tmp/input.txt"
    >$OUTPUT
    trap "rm $OUTPUT; exit" SIGHUP SIGINT SIGTERM  

    #dialogbox password
    dialog --title "Password" \
          --clear \
          --inputbox "Enter your password" 8 60 2> $OUTPUT
    
    #script lama tanpa dialogbox
    #echo  "Harap masukan password !!! "; read -p 'password : ' password
clear

    #variable password
    password=$(<$OUTPUT)
    pass="ganteng";
    if [ $password == $pass ];
      then
  
    #loop prosesbox jika password benar
    (
    for((loop=0; loop<=100; loop++))
    do
      echo "$loop %"
      sleep 0.01
    done
    ) |

    #prosesbox cek password
    dialog --title "[ Mengecek Password ]" \
          --backtitle "TKJ Production" \
          --gauge "\n Harap Menunggu ....." 10 60 0

    #Ucapan dialogbox password benar
    dialog --title "Selamat Datang `whoami` " \
       --backtitle "TKJ Production " \
       --msgbox "\n Siapkan Uang Anda Sebelum Terlambat" 10 60 0
clear

      else
      #dialogbox proses loop cek password
      (
      for((loop=0; loop<=100; loop++))
      do
       echo "$loop %"
       sleep 0.07
      done
      ) |

      #dialogbox prosescekpassword 
      dialog --title "[ Mengecek Password ]" \
        --backtitle "TKJ Production" \
        --gauge "\n Harap Menunggu ....." 10 60 0
      #dialogbox prosespasswordsalah
      dialog --title "Maaf Password Anda Salah " \
       --backtitle "TKJ Production " \
       --msgbox "\n Silahkan Mengulangi Program Ini" 10 60 
clear
exit 0
      fi 

      y='y'
      while [ $y == 'y' ] || [ $y == 'Y' ];
      do
        echo "|			    TKJ Production			   |"
        echo "===================================================================="
        echo "|		1. GIGABYTE Motherboard Socket AM3 / AM3+?	   |"
        echo "|		2. Processor AMD Vishera FX 8350?	   	   |"
        echo "|		3. PowerSupply VENOM RX Madara Fire & Ice?   	   |"
        echo "|		4. RAM KINGSTON Memory Notebook 8GB DDR3 PC-12800? |"
        echo "|		5. VGA AMD Radeon HD 7970 Double D Black Edition?  |"
        echo "|		6. Casing Antec Nine Hundred Mid Tower?		   |"
        echo "|		7. Ethernet TP-LINK Gigabit PCI Network Adapter?   |"
        echo "|		8. Gak Jadi Beli?	   			   |"
        echo "===================================================================="
        echo -n "Jadi mau beli yang mana? ketik (1-8) : "
        read perintah

      if [ $perintah = 1 ] ; then
        echo -n "Jumlah yang dinginkan?(Rp.1.500.000) :"
        read jumlah
	      bayar=`expr $jumlah \* 1500000`
        clear
      elif [ $perintah = 2 ] ; then
        echo -n "Jumlah yang diinginkan?(Rp.1.900.000)"
       	read jumlah
        bayar=`expr $jumlah \* 1900000`
	      clear
      elif [ $perintah = 3 ] ; then
        echo -n "Jumlah yang diinginkan?(Rp.825.000)"
        read jumlah
        bayar=`expr $jumlah \* 825000`
	      clear
      elif [ $perintah = 4 ] ; then
        echo -n "Jumlah yang diinginkan?(Rp.1.150.000)"
        read jumlah
        bayar=`expr $jumlah \* 1150000`
	      clear
      elif [ $perintah = 5 ] ; then
        echo -n "Jumlah yang diinginkan?(Rp.5.800.000)"
        read jumlah
        bayar=`expr $jumlah \* 5800000`
      	clear
      elif [ $perintah = 6 ] ; then
        echo -n "Jumlah yang dinginkan?(Rp.1.450.000) :"
        read jumlah
        bayar=`expr $jumlah \* 1450000`
	      clear
      elif [ $perintah = 7 ] ; then
        echo -n "Jumlah yang dinginkan?(Rp.126.000) :"
        read jumlah
        bayar=`expr $jumlah \* 126000`
	      clear
      elif [ $perintah = 8 ] ; then
	    dialog --title "Terima Kasih Sudah Melihat-lihat `whoami` " \
            --backtitle "TKJ Production " \
            --msgbox "\n \n Kalo kesini bawa uang lagi ya " 10 60
clear
exit
      else
        echo "Maaf Seharusnya anda memasukkan angka dari (1-8) !!!"
        echo "Harap Mengulangi program jika ingin melakukan pemesanan"
exit 1
      fi
        echo "============================================="
        echo "============================================="
        echo ""
        echo "		TKJ Production		    "
        echo ""
        echo "Jumlah barang yang dibeli =           $jumlah"
        echo "Jumlah yang harus dibayar = Rp. $bayar "
        echo ""
        echo "============================================="
        echo "============================================="
        echo ""
        echo "By Admin Gusty $(date) "
        echo ""
        echo ""
        echo  "Mau beli lagi (y/t)?"

      read y;
      while [ $y != 'y' ] && [ $y != 'Y' ] && [ $y != 't' ] && [ $y != 'T' ];
      do
	      echo "Salah Memasukan input,pilih antara (y/Y/t/T)";
	      echo -n "Coba ulangi lagi apakah anda mau beli lagi atau tidak? (y/t)";
    	read y;
clear
      done
clear
      done
clear

      dialog --title "Terima Kasih `whoami` " \
            --backtitle "TKJ Production " \
            --msgbox "\n \n Semoga Anda Puas " 10 60
clear