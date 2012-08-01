#!/bin/bash

# Script for show basic info for new systems
# By Pablo Serrano 
# 
# Version 1.0
# Please execute this script with root login 


echo "Cpu Info"
echo "**********************************"
cat /proc/cpuinfo
sleep 3
echo "**********************************"

echo "Mem Info"
echo "**********************************"
cat /proc/meminfo
sleep 3
echo "**********************************"

echo "Disk info"
echo "**********************************"
df -i
sleep 3
echo "**********************************"

echo "Check Load system"
echo "**********************************"
vmstat
sleep 3
