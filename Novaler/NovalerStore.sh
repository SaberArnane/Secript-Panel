#!/bin/sh
#

wget -O /var/volatile/tmp/senigma2-plugin-extensions-novalerstore-python3_2.0-r0_all.ipk "https://github.com/Ham-ahmed/HAmed-Scripts/blob/main/enigma2-plugin-extensions-novalerstore-python3_2.0-r0_all.ipk"
wait
opkg install --force-overwrite /tmp/*.ipk
wait
rm -f /var/volatile/tmp/enigma2-plugin-extensions-novalerstore-python3_2.0-r0_all.ipk
wait
sleep 2;
exit 
