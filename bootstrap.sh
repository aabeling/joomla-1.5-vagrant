#!/bin/bash

echo "this is the bootstrap installer"

# install packages
apt-get update
apt-get install -y php5 php5-mysql unzip php5-mysql apache2

# get joomla 1.5
mkdir -p install
cd install
wget http://joomlacode.org/gf/download/frsrelease/16890/73390/Joomla_1.5.26-Stable-Full_Package.zip
unzip Joomla_1.5.26-Stable-Full_Package.zip
cp -ru * /var/www/
chown -R www-data.www-data /var/www

/etc/init.d/apache2 restart

echo "joomla base installation is now available under http://localhost:8080/index.php"


