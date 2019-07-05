#!/bin/bash
export nama=speedtest-pagi
file=`date +%Y%m%d-$nama`
tanggal=`date +"%A %d %B %Y"`
cd /home/TukangSpeedtest/SpeedtestPagi/
touch $file
echo "To: monitoring@varnion.com" >> $file
echo "To: jr.provisioning@varnion.com" >> $file
echo "From: notifclient@varnion.com" >> $file
echo "Subject:[SPEEDTEST] Monitor Speedtest Server Lokal dan International - 08:00 - $tanggal" >> $file
echo "Dear Team," >> $file
echo "Berikut hasil speedtest ke server lokal dan international pada pagi hari" >> $file
echo "" >> $file
echo "Lokal" >> $file
speedtest-cli --server 797 >> $file
echo "===========================" >> $file
speedtest-cli --server 13039 >> $file
echo "===========================" >> $file
speedtest-cli --server 11118 >> $file
echo "===========================" >> $file
speedtest-cli --server 18333 >> $file
echo "" >> $file
echo "International" >> $file
speedtest-cli --server 13623 >> $file
echo "===========================" >> $file
speedtest-cli --server 367 >> $file
echo "===========================" >> $file
speedtest-cli --server 2054 >> $file
echo "===========================" >> $file
speedtest-cli --server 7368 >> $file
echo "" >> $file
echo "Regards,--" >> $file
echo "Tukang Speedtest" >> $file
ssmtp monitoring@varnion.com < $file

