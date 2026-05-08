#!/bin/bash

apt update -y
apt install apache2 php unzip wget -y

systemctl start apache2
systemctl enable apache2

cd /var/www/html

rm index.html

wget https://github.com/USERNAME/REPO/archive/refs/heads/main.zip

unzip main.zip

cp -r REPO-main/app/* /var/www/html/

chmod -R 777 /var/www/html

systemctl restart apache2