#!/bin/bash
echo "Preparando para instalar Servidor Apache2"
apt update
apt install apache2 -y
systemctl enable apache2
apt install unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip -d /var/www/html
cd /var/www/html
cp -R linux-site-dio-main/* .
rmdir --ignore-fail-on-non-empty linux-site-dio-main
echo "Pronto!"
