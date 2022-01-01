#!/bin/bash

archs=`uname -m`
if [ $archs = "x86_64" ]; then
    file=bin_64
elif [ $archs = "amd64" ]; then
    file=bin_64
elif [ $archs = "armv7l" ]; then
    file=armv7
elif [ $archs = "armv6l" ]; then
    file=armv7
elif [ $archs = "aarch64" ]; then
    file=aarch64
elif [ $archs = "arm64" ]; then
    file=aarch64
else
    file=armv7
fi
mkdir /download
wget -cq --no-check-certificate https://brightdata.com/static/earnapp/$file -O /download/earnapp
echo | md5sum /download/earnapp
chmod +x /download/earnapp
