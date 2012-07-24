#/bin/bash 
# Test de iops para sistemas y vps 
# By Pablo Serrano 

echo "Bajando ioping"
wget http://ioping.googlecode.com/files/ioping-0.6.tar.gz
echo "Montando ioping"
tar xvzf ioping-0.6.tar.gz
cd ioping-0.6
make 
make install
cd ..

echo "test de disco en directorio de ejecución"

ioping . -c 10

echo "test exaustivo de /home/"

ioping /home/ -R