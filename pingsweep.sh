#!/bin/bash

clear
echo -e '\n'
echo -e '\n'
echo '{$}This Work is made by WIME$'
echo ========================================================================
if [ "$1" == "" ]
then
echo "Usage  :./pingsweep.sh [network] "
echo "Example:./pingsweep.sh 192.168.1 "
else
echo "[*]  Active ip's"
echo ========================================================================
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes"| cut -d " " -f 4 | cut -d ":" -f 1|sort -u  &
done
echo ========================================================================
fi
