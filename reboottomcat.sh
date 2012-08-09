#!/bin/bash 

#reboottomcat.sh : This script make best reboot for tomcat services, and if don't detect at logs that service stop, this script makes a autoreboot at 180 sec
# By Pablo Serrano 2012
# Version 1.0

regex='Stopping Coyote HTTP/1.1'
i=0

service httpd stop
service tomcat6 stop

while true;
do
    sleep 5
    if   [[ "$(tail -n1 /var/log/tomcat6/catalina.out)" == *$regex* ]] || (( "$i" == "180" )) ; then
        service httpd start
        service tomcat6 start
        break
    else
        let i=i+5
        reset
        echo "Passed $i seconds"
    fi
done