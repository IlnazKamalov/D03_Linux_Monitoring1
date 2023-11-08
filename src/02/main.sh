#!/bin/bash

HOSTNAME=$(hostname)
TIMEZONE=$(cat /etc/timezone)
USER=$(whoami)
OS=$(uname)
DATE=$(date +"%d %B %Y %X")
UPTIME=$(uptime -p)
UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
IP=$(hostname -I | awk '{print $1}')
MASK=$(ifconfig $(ip r | grep default | awk '{print $5}') | awk '/netmask / {print $4}')
GATEWAY=$(ip r | grep default | awk '{print $3}')
RAM_TOTAL=$(free | grep -e Mem: | awk '{printf "%.3f GB", $2/(1024. * 1024.)}')
RAM_USED=$(free | grep -e Mem: | awk '{printf "%.3f GB", $3/(1024. * 1024.)}')
RAM_FREE=$(free | grep -e Mem: | awk '{printf "%.3f GB", $4/(1024. * 1024.)}')
SPACE_ROOT=$(df / | grep dev | awk '{printf "%.2f MB", $2/(1024.)}')
SPACE_ROOT_USED=$(df / | grep dev | awk '{printf "%.2f MB", $3/(1024.)}')
SPACE_ROOT_FREE=$(df / | grep dev | awk '{printf "%.2f MB", $4/(1024.)}')

str1="HOSTNAME = $HOSTNAME"
str2="TIMEZONE = $TIMEZONE"
str3="USER = $USER"
str4="OS = $OS"
str5="DATE = $DATE"
str6="UPTIME = $UPTIME"
str7="UPTIME_SEC = $UPTIME_SEC"
str8="IP = $IP"
str9="MASK = $MASK"
str10="GATEWAY = $GATEWAY"
str11="RAM_TOTAL = $RAM_TOTAL"
str12="RAM_USED = $RAM_USED"
str13="RAM_FREE = $RAM_FREE"
str14="SPACE_ROOT = $SPACE_ROOT"
str15="SPACE_ROOT_USED = $SPACE_ROOT_USED"
str16="SPACE_ROOT_FREE = $SPACE_ROOT_FREE"

for arg in "$str1" "$str2" "$str3" "$str4" "$str5" "$str6" "$str7" "$str8"\
    "$str9" "$str10" "$str11" "$str12" "$str13" "$str14" "$str15" "$str16"
do
    echo $arg
done
    echo 
        . save_log_file.sh
exit 0