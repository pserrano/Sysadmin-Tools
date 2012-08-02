#/bin/bash
#Speedtest.sh by Pablo Serrano. 
# This script test you dw connection from others servers 

echo "Test from usa site"
wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip

echo "test from CDN multisite"
wget --output-document=/dev/null http://cachefly.cachefly.net/100mb.test 

echo "Test from EUR site"
wget --output-document=/dev/null http://mirror.leaseweb.com/speedtest/100mb.bin