#!/bin/bash

#Grep interface
#print except one column awk '{$1="";$0=substr($0,2)}1'
#interface=$(nmcli dev status | awk -F ' ' '{print $1}' | grep -v '^DEVICE' | sed -e :a -e '$!N; s/\n/ | /; ta')
#awk '{ print " "$3" "$4" "$5 }'
#virsh net-dhcp-leases default | awk '{ print " "$3" "$5" "$6 }' | sed 's/ /,/g' | sed 's/,//' | grep -v 'MAC,Protocol,IP' | grep -v ',,' >> /var/lib/libvirt/dnsmasq/default.hostsfile
#cat file.in | awk -F"," '!($1$2$3$4$5$6$7$8 in a){a[$1$2$3$4$5$6$7$8];print $0}' > file.out
interface=$(nmcli dev status | awk -F ' ' '{print $1}' | grep -v '^DEVICE' | nl )
#typenet=$(nmcli dev status | awk -F ' ' '{print $2}' | grep -v 'TYPE' | sed -e :a -e '$!N; s/\n/ | /; ta')
clear
#Menu
y='y'
  while [ $y == 'Y' ] || [ $y == 'y' ];
  do
     clear
     echo "|                         Networking                               |"
     echo "===================================================================="
     echo "|   1. Menambahkan Connection Baru                                 |"
     echo "|   2. Mengedit Connection                                         |"
     echo "|   3. Delete Connection                                           |"
     echo "|   4. Menampilkan Connection                                      |"
     echo "|   5. Melakukan Connection Up/Down                                |"
     echo "|   6. Menampilkan Device Status                                   |"
     echo "|   7. Disable Device                                              |"
     echo "|   8. Gak Jadi                                                    |"
     echo "===================================================================="
     echo -n "Pilihlah? ketik (1-8) : "
     read pilihan
     #################################################################################
     #Pilihan connection baru
     if [ $pilihan = 1 ]; then
        clear
        echo "|                        Static / DHCP                             |"
        echo "===================================================================="
        echo "|   1. Static                                                      |"
        echo "|   2. DHCP                                                        |"
        echo "===================================================================="
        echo -n "Pilihlah? ketik (1-2) : "
        read pilihanstaticdhcp
        ###############################################################################
        #Pilihan ke static
        if [ $pilihanstaticdhcp = 1 ]; then
          clear
          echo  "Masukan connection name yang ingin dibuat ( tes | internet | gateway )"
          read -p 'con-name :    ' conname
          echo ""
         # echo  "Masukan interface namenya ( $interface )"
         # read -p 'ifname   :    ' ifname
         echo "Pilihlah interface namenya   : "
         echo "$interface"
         echo -n "Pilih sesuai nomor ?"
         read pilihaninterface
          typedev=$(nmcli dev status | grep -a $ifname | awk -F '  ' '{print $2}')
          echo ""
          echo  "Masukan alamat ip nya ( 192.168.1.1/24 | 10.10.10.1/16 )"
          read -p 'ip4      :    ' ipaddress
          echo ""
          read -p  'Masukan gateway ? ( Y/T ) :    ' gatewy
            if [ $gatewy = Y ] || [ $gatewy = y ]; then
            read -p 'gateway ( 192.168.1.254 | 10.10.10.1 ) :    ' gwy
            nmcli con add con-name $conname ifname $ifname type $typedev ip4 $ipaddress gw4 $gwy
            else
            nmcli con add con-name $conname ifname $ifname type $typedev ip4 $ipaddress
            fi
          echo ""
          read -p 'Ingin menambahkan DNS? ( Y/T ) :    ' dns
            if [ $dns = Y ] || [ $dns = y ]; then
            read -p 'DNS ( 8.8.8.8 | 192.168.1.1 ) :    ' domainns
            nmcli con mod "${conname}" ipv4.dns $domainns
            fi
          echo ""
            read -p ' Ada lagi ? ( Y/T ) :    ' dnstambah
            while [ $dnstambah == 'Y' ] || [ $dnstambah == 'y' ]; 
            do
            if [ $dnstambah = Y ] || [ $dnstambah = y ]; then
            read -p ' DNS ( 8.8.8.8 | 192.168.1.1 ) :   ' domainnsagain
            nmcli con mod "${conname}" +ipv4.dns $domainnsagain
            read -p ' Ada lagi ? ( Y/T ) :   ' dnstambah
            fi
          done

#          while [ $autoconnection != 'yes' ] && [ $autoconnection != 'no' ];
#          do
          read -p 'autoconnect connection ( yes | no ) :    ' autoconnection 
          if [ $autoconnection = 'yes' ]; then 
           nmcli con mod "${conname}" connection.autoconnect yes 
         
          elif [ $autoconnection = 'no' ]; then 
           nmcli con mod "${conname}" connection.autoconnect no 
          fi 
#         done 
          
#         while [ $activatedconn != 'up' ] && [ $activatedconn != 'down' ];  
#         do
          read -p  'Activated Connection ( up | down ) :    ' activatedconn 
          if [ $activatedconn = 'up' ]; then 
          nmcli con up "${conname}" 
          echo " Detail NMCLI SHOW CONFIGURATION " 
          nmcli con show "${conname}" | grep -e 'connection.id' -e 'connection.interface-name' -e 'connection.uid' -e 'connection.type' -e 'connection.autoconnect' -e 'ipv4' -e 'GENERAL' 
          elif [ $activatedconn = 'down' ]; then 
          nmcli con down "${conname}" 
          nmcli con show "${conname}" | grep -e 'connection.id' -e 'connection.interface-name' -e 'connection.uid' -e 'connection.type' -e 'connection.autoconnect' -e 'ipv4' -e 'GENERAL' 
          fi
#         done
          echo  "Mau ulangi program ini lagi (y/t)?"
          read y;
          while [ $y != 'y' ] && [ $y != 'Y' ] && [ $y != 't' ] && [ $y != 'T' ];
          do
          echo "Salah Memasukan input,pilih antara (y/Y/t/T)";
          echo -n "Coba ulangi lagi apakah anda mau beli lagi atau tidak? (y/t)";
          read y;
          clear
          done
          
          #############################################################################
          #Pilihan ke dhcp
        elif [ $pilihanstaticdhcp = 2 ]; then
          echo  "Masukan connection name yang ingin dibuat ( tes | internet | gateway )"
          read -p 'con-name :    ' conname
          echo ""
          echo  "Masukan interface namenya ( $interface )"
          read -p 'ifname   :    ' ifname
          nmcli con add con-name $conname ifname $ifname type ethernet 

          read -p 'autoconnect connection ( yes | no ) :    ' autoconnection 
          while [ $autoconnection != 'yes' ] && [ $autoconnection != 'no' ]
          do
          if [ $autoconnection = 'yes' ]; then 
           nmcli con mod "${conname}" connection.autoconnect yes 
         
          elif [ $autoconnection = 'no' ]; then 
           nmcli con mod "${conname}" connection.autoconnect no 
          fi 
          done 
          
          read -p  'Activated Connection ( up | down ) :    ' activatedconn 
          while [ $activatedconn != 'up' ] && [ $activatedconn != 'down' ]    
          do
          if [ $activatedconn = 'up' ]; then 
          nmcli con up "${conname}" 
          echo " Detail NMCLI SHOW CONFIGURATION " 
          nmcli con show "${conname}" | grep -e 'connection.id' -e 'connection.interface-name' -e 'connection.uid' -e 'connection.type' -e 'connection.autoconnect' -e 'ipv4' -e 'GENERAL' 
          elif [ $activatedconn = 'down' ]; then 
          nmcli con down "${conname}" 
          nmcli con show "${conname}" | grep -e 'connection.id' -e 'connection.interface-name' -e 'connection.uid' -e 'connection.type' -e 'connection.autoconnect' -e 'ipv4' -e 'GENERAL' 
          
          clear
          fi  
          done

        echo  "Mau Balik ke Menu (y/t)?"
        read y;
        while [ $y != 'y' ] && [ $y != 'Y' ] && [ $y != 't' ] && [ $y != 'T' ];
        do
        echo "Salah Memasukan input,pilih antara (y/Y/t/T)";
        echo -n "Coba ulangi lagi apakah anda mau beli lagi atau tidak? (y/t)";
        read y;
        clear
        done

      ###################################################################################
      #Pilihan kedua edit connection
        elif [ $pilihan = 2 ]; then
        echo "|                     Edit Connection                              |"
        echo "===================================================================="
        echo "|   1. Ganti IP                                                    |"
        echo "|   2. Tambah IP                                                   |"
        echo "|   3. Ganti DNS                                                   |"
        echo "|   4.                                                    |"
        echo "|   5. Tambah IP                                                   |"
        echo "===================================================================="
        echo -n "Pilihlah? ketik (1-2) : "
      fi
      ###################################################################################
      #Pilihan ke exit
      elif [ $pilihan = 8 ]; then 
      exit 
    
      clear 
    else 
      echo "Maaf Seharusnya anda memasukkan angka dari (1-8) !!!" 
      echo "Harap Mengulangi program ini" 
      clear 
     fi
  done
