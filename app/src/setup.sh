#!/bin/bash

# yum -y install glib* wget curl httpd
# yum clean all

apt update && apt install wget curl net-tools -y
archs=`uname -m`
if [ $archs = "x86_64" ]; then
    file=bin_64
else
    file=armv7
fi
echo "Fetching $file"
wget -c https://brightdata.com/static/earnapp/$file -O /tmp/earnapp
echo | md5sum /tmp/earnapp
chmod +x /tmp/earnapp
