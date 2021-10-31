#!/bin/bash

apt update && apt install wget curl net-tools -y
archs=`uname -m`
if [ $archs = "x86_64" ]; then
    file=bin_64
else
    file=armv7
fi
echo "Fetching $file"
mkdir /download
wget -c https://brightdata.com/static/earnapp/$file -O /download/earnapp
echo | md5sum /download/earnapp
chmod +x /download/earnapp
