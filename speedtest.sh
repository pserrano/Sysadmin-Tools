#/bin/bash

echo "test form usa site"
wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip

echo "test from CDN multisite"
wget --output-document=/dev/null http://cachefly.cachefly.net/100mb.test