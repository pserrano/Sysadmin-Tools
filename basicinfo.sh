#!/bin/bash

# Script for show basic info for new systems
# By Pablo Serrano 
# 
# Please execute this script with root login


echo "Cpu Info"

cat /proc/cpuinfo

echo "Mem Info"

cat /proc/meminfo

echo "Disk info"

df -i

echo "Check Load system"

vmstat

