#!/bin/bash

# Script for show basic info for new systems
# By Pablo Serrano 
# 
# Please execute this script with root login


echo "Cpu Info"
echo "**********************************"
cat /proc/cpuinfo
sleep 3

echo "Mem Info"
echo "**********************************"
cat /proc/meminfo
sleep 3

echo "Disk info"
echo "**********************************"
df -i
sleep 3

echo "Check Load system"
echo "**********************************"
vmstat
sleep 3
