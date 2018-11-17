apache2ctl -M
apachectl configtest

add-apt-repository ppa:ondrej/php
apt-get update && apt-get install php7.1
apt-get install php7.1-gd
apt-get install php-mbstring php7.1-mbstring php-gettext libapache2-mod-php7.0
apt-get install php7.1-mysql
sudo apt-get install php7.1-xml
sudo apt-get install php7.1-zip
