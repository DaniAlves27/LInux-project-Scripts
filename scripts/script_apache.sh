#!/bin/bash

echo "Atualizando server..."

apt-get update
apt-get upgarde -y
apt-get install apache -y
apt-get install unzip -y

echo "Baixanndo arquivos da aplicação web..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/reafs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/

echo "Finalizado..." 
