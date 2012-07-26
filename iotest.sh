#/bin/bash 
# Test iops for servers and vps 
# By Pablo Serrano 

echo "Download ioping"
wget http://ioping.googlecode.com/files/ioping-0.6.tar.gz
echo "Make ioping"
tar xvzf ioping-0.6.tar.gz
cd ioping-0.6
make 
make install
cd ..

echo "test disk on main dir"

ioping . -c 10

echo "Exaustive test on /home/"

ioping /home/ -R

echo "Stress test with dd. With zero contain 1G file."

dd if=/dev/zero of=test bs=64k count=16k conv=fdatasync