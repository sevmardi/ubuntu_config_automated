#!/bin/bash

#Update the apt package index:
apt-get update

sudo apt-get install mcrypt php7.2-mcrypt
sudo apt-get install php7.0-gd
sudo apt-get install php-pear php7.2-curl php7.2-dev php7.2-gd php7.2-mbstring php7.2-zip php7.2-mysql php7.2-xml
sudo apt-get install php-mbstring php7.2-mbstring php-gettext libapache2-mod-php7.2