#!/bin/bash

echo -e "\033[01;33mUpdating the server...\033[00;32m"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo -e "\033[01;33mDownloading and copying application files...\033[00;32m"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo -e "\033[01;33mFinished!\033[00;32m"

