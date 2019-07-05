#!/bin/bash
export name=RB-PTP-Kokoon-Surabaya
namefile=`date +%Y%m%d-$name`
ssh sniper@111.68.118.153 -p 2225 export file=$namefile
ssh sniper@111.68.118.153 -p 2225 system backup save name=$namefile
scp -P 2225 sniper@111.68.118.153:$namefile.rsc /home/backup/KokoonSurabaya
scp -P 2225 sniper@111.68.118.153:$namefile.backup /home/backup/KokoonSurabaya
chmod 755 /home/backup/KokoonSurabaya/$namefile.rsc
chmod 755 /home/backup/KokoonSurabaya/$namefile.backup

