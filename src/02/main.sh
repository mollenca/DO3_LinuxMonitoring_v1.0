#!/bin/bash

function out()
{
echo "HOSTNAME  = $HOSTMANE"
echo "TIMEZONE  = $(timedatectl | grep "Time zone" | awk '{print $3, $4, $5}')"
echo "USER      = $USER"
echo "OS        = $(hostnamectl | grep "Operating System" | awk '{print $3, $4, $5}')"
echo "DATE      = $(date | awk '{print $2, $3, $4, $5}')"
echo "UPTIME    = $(uptime -p | awk '{print $2, $3, $4, $5}')"
echo "UPTIME_SEC= $(cat /proc/uptime | awk '{$2="seconds"; print $1, $2}')"
echo "IP        = $(hostname -i)"
echo "MASK      = $(ifconfig | grep -m1 "netmask" | awk '{print $4}')"
echo "GATEWAY   = $(ip r | grep default | awk '{print $3}')"
echo "RAM_TOTAL = $(free -m | grep Mem | awk '{printf("%.3f\n",$2 / 1024)}') Gb"    
echo "RAM_USED  = $(free -m | grep Mem | awk '{printf("%.3f\n",$3 / 1024)}') Gb"    
echo "RAM_FREE  = $(free -m | grep Mem | awk '{printf("%.3f\n",$4 / 1024)}') Gb"    
echo "SPACE_ROOT= $(df -hk | grep "\/$" | awk '{printf("%.2f\n",$2 / 1024)}') Mb"
echo "SPACE_ROOT_USED= $(df -hk | grep "\/$" | awk '{printf("%.2f\n",$3 / 1024)}') Mb"
echo "SPACE_ROOT_FREE= $(df -hk | grep "\/$" | awk '{printf("%.2f\n",$4 / 1024)}') Mb"
}

out

echo "Записать данные в файл? [Y/n]"
read abc
if [[ $abc = Y || $abc = y ]]
then
file=$(date +"%d_%m_%Y_%H_%M_%S".status)
out>$file
fi