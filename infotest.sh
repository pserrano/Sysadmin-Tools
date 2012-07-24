#!/bin/bash 

# infotest.sh Script for make a extend information and specs for linux servers.  
# This test check, cpumodel, cpucores, cpufreq, cpucache, RAM, SWAP, uptime, IOspeed, and Download Speedtest. 
# By Pablo Serrano
# Version 1.0



echo "Infotest by Pablo Serrano"
echo "Running test, please wait..."
cpumodel=$(cat /proc/cpuinfo|grep name|head -1|awk '{ $1=$2=$3=""; print }')
cpucores=$(cat /proc/cpuinfo|grep MHz|wc -l)
cpufreq=$(cat /proc/cpuinfo | grep "cpu MHz" | sed q | awk '{ print substr( $0, length($0) - 7, length($0) ) }')
cpucache=$(cat /proc/cpuinfo|grep "cache size"|head -1|awk '{ print substr( $0, length($0) - 6, length($0) ) }')
ram=$(free -m|grep Mem|awk '{print $2}')
swap=$(free -m|grep Swap|awk '{print $2}')
up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
iospeed=$( (dd if=/dev/zero of=test_$$ bs=64k count=16k conv=fdatasync &&rm -f test_$$) 2>&1 | tail -1| awk '{ print $(NF-1) $NF }')
down=$( (wget -O /dev/null http://cachefly.cachefly.net/100mb.test) 2>&1 |tail -2|head -1| awk '{print $3 $4 }')

echo "****************************************************"
echo "CPU model : $cpumodel"
echo "Number of cores : $cpucores"
echo "CPU frequency : $cpufreq MHz"
echo "CPU cache :  $cpucache "
echo "Total amount of ram : $ram MB"
echo "Total amount of swap : $swap MB"
echo "System uptime : $up"
echo "I/O speed : $iospeed"
echo "Download speed from cachefly : $down"
