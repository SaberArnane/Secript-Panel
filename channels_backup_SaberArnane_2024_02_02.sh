#!/bin/sh
##
channel=Saber-Arnane
version=motor

echo "> Downloading "$channel" "$version" Channels List  Please Wait ......"
sleep 3s

wget -O /var/volatile/tmp/$channel-$"version".tar.gz "https://github.com/SaberArnane/Secript-Panel/raw/main/channels_backup_SaberArnane_2024_02_02.tar.gz"

echo ""


rm -rf /etc/enigma2/lamedb
rm -rf /etc/enigma2/*list
rm -rf /etc/enigma2/*.tv
rm -rf /etc/enigma2/*.radio
rm -rf /etc/tuxbox/*.xml


cd /tmp
set -e

echo "> Installing  "$channel" "$version" Channels List Please Wait ......"
sleep 3s
echo
tar -xvf $channel-$"version".tar.gz -C /
set +e
rm -f $channel-$"version".tar.gz
echo
echo "   >>>>   Reloading Services - Please Wait   <<<<"
wget -qO - http://127.0.0.1/web/servicelistreload?mode=0 > /dev/null 2>&1
sleep 2
echo
init 3

echo" #########################################################"
echo "#             Please restart your device                #"
echo "#########################################################"
sleep 2
killall -9 enigma2
exit 0
