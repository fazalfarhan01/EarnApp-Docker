#!/bin/bash
echo "
███████╗░█████╗░██████╗░███╗░░██╗░█████╗░██████╗░██████╗░  ██████╗░░█████╗░░█████╗░██╗░░██╗███████╗██████╗░
██╔════╝██╔══██╗██╔══██╗████╗░██║██╔══██╗██╔══██╗██╔══██╗  ██╔══██╗██╔══██╗██╔══██╗██║░██╔╝██╔════╝██╔══██╗
█████╗░░███████║██████╔╝██╔██╗██║███████║██████╔╝██████╔╝  ██║░░██║██║░░██║██║░░╚═╝█████═╝░█████╗░░██████╔╝
██╔══╝░░██╔══██║██╔══██╗██║╚████║██╔══██║██╔═══╝░██╔═══╝░  ██║░░██║██║░░██║██║░░██╗██╔═██╗░██╔══╝░░██╔══██╗
███████╗██║░░██║██║░░██║██║░╚███║██║░░██║██║░░░░░██║░░░░░  ██████╔╝╚█████╔╝╚█████╔╝██║░╚██╗███████╗██║░░██║
╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝╚═╝░░░░░╚═╝░░░░░  ╚═════╝░░╚════╝░░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝
An image by https://github.com/fazalfarhan01
"
echo "Installing"
sleep 2
cp /download/earnapp /usr/bin/earnapp
chmod a+wr /etc/earnapp/
touch /etc/earnapp/status
chmod a+wr /etc/earnapp/status
printf $EARNAPP_UUID > /etc/earnapp/uuid
earnapp start &
sleep 5
earnapp run
