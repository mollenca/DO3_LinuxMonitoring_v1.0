#!/bin/bash

function out()
{
echo -e "${BG1}${F1} HOSTNAME${NORMAL}  = ${BG2}${F2}$HOSTNAME${NORMAL}"
echo -e "${BG1}${F1} TIMEZONE${NORMAL}  = ${BG2}${F2}$(timedatectl | grep "Time zone" | awk '{print $3, $4, $5}')${NORMAL}"
echo -e "${BG1}${F1} USER${NORMAL}      = ${BG2}${F2}$USER${NORMAL}"
echo -e "${BG1}${F1} OS${NORMAL}        = ${BG2}${F2}$(hostnamectl | grep "Operating System" | awk '{print $3, $4, $5}')${NORMAL}"
echo -e "${BG1}${F1} DATE${NORMAL}      = ${BG2}${F2}$(date | awk '{print $2, $3, $4, $5}')${NORMAL}"
echo -e "${BG1}${F1} UPTIME${NORMAL}    = ${BG2}${F2}$(uptime -p | awk '{print $2, $3, $4, $5}')${NORMAL}"
echo -e "${BG1}${F1} UPTIME_SEC${NORMAL}= ${BG2}${F2}$(cat /proc/uptime | awk '{$2="seconds"; print $1, $2}')${NORMAL}"
echo -e "${BG1}${F1} IP${NORMAL}        = ${BG2}${F2}$(hostname -i)${NORMAL}"
echo -e "${BG1}${F1} MASK${NORMAL}      = ${BG2}${F2}$(ifconfig | grep -m1 "netmask" | awk '{print $4}')${NORMAL}"
echo -e "${BG1}${F1} GATEWAY${NORMAL}   = ${BG2}${F2}$(ip r | grep default | awk '{print $3}')${NORMAL}"
echo -e "${BG1}${F1} RAM_TOTAL${NORMAL} = ${BG2}${F2}$(free -m | grep Mem | awk '{printf("%.3f\n",$2 / 1024)}') Gb${NORMAL}"    
echo -e "${BG1}${F1} RAM_USED${NORMAL}  = ${BG2}${F2}$(free -m | grep Mem | awk '{printf("%.3f\n",$3 / 1024)}') Gb${NORMAL}"    
echo -e "${BG1}${F1} RAM_FREE${NORMAL}  = ${BG2}${F2}$(free -m | grep Mem | awk '{printf("%.3f\n",$4 / 1024)}') Gb${NORMAL}"    
echo -e "${BG1}${F1} SPACE_ROOT${NORMAL}= ${BG2}${F2}$(df -hk | grep "\/$" | awk '{printf("%.2f\n",$2 / 1024)}') Mb${NORMAL}"
echo -e "${BG1}${F1} SPACE_ROOT_USED${NORMAL}= ${BG2}${F2}$(df -hk | grep "\/$" | awk '{printf("%.2f\n",$3 / 1024)}') Mb${NORMAL}"
echo -e "${BG1}${F1} SPACE_ROOT_FREE${NORMAL}= ${BG2}${F2}$(df -hk | grep "\/$" | awk '{printf("%.2f\n",$4 / 1024)}') Mb${NORMAL}"
}
