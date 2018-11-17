#!/bin/bash

sleep 2
clear


#Login as root before start
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi


apt-get update
apt-get install software-properties-common ansible git python-apt -y

apt-get upgrade -y

#KeePassX
#apt-get install keepassx -y

#Spotify
#apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
#echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
#apt-key adv --recv-keys --keyserver keyserver.ubuntu.com BBEBDCB318AD50EC6865090613B00F1FD2C19886
#apt-get update && apt-get install spotify-client;

#Git
#apt-get install git -y


#Atom
add-apt-repository ppa:webupd8team/atom
apt-get update
apt-get install atom

#Enrytion GUI
apt-get install seahorse 
apt-get install seahorse-nautilus 

#tmux
apt-get install tmux

#Double Commander
add-apt-repository ppa:alexx2000/doublecmd
apt-get update
apt-get install doublecmd-qt

#Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
apt-get update && apt-get install google-chrome-stable -y

#Java
add-apt-repository ppa:webupd8team/java
apt update; apt install oracle-java8-installer

#Smargit 
add-apt-repository ppa:eugenesan/ppa
apt-get update; apt-get install smartgit; 

# Node.js
apt-get install curl
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs

# Redis 
# apt-get install build-essential tcl
# cd /tmp
# curl -O http://download.redis.io/redis-stable.tar.gz
# tar xzvf redis-stable.tar.gz
# cd redis-stable

#Synapse 
add-apt-repository ppa:synapse-core/ppa 
apt-get update; apt-get install synapse;


#Docker
# apt-get update
# apt-get upgrade -y
# apt-get install vim htop iftop git curl -y


#Sublime text 3
echo "################################ Installing sublime-text-3 #########################################"
add-apt-repository ppa:webupd8team/sublime-text-3 
apt-get update; apt-get install sublime-text-installer;

#Thunderbird 
add-apt-repository ppa:ubuntu-mozilla-security/ppa
apt-get update; apt-get install thunderbird;

#gtop 
npm install gtop -g

#pip 
apt-get install python-pip  python3-pip python-dev build-essential 
apt-get install python-setuptools python-dev build-essential 

#create virtuelenv & install django
echo "################################ Installing virtualenv & Django #########################################"
pip install virtualenv
pip install -e django
# pip install numpy 
# pip install matplotlib

#UNetbootin
echo "################################ Installing UNetbootin #########################################"
add-apt-repository ppa:gezakovacs/ppa
apt-get update 
apt-get install unetbootin

#Wine 
dpkg --add-architecture i386
apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/'
wget https://dl.winehq.org/wine-builds/Release.key && apt-key add Release.key
apt-get update 
apt-get install winehq-stable

#Screen
echo "################################ Installing Screen #########################################"
apt-get install screen


#Install Scala 

#Install Ruby 

#Install GoLang


#MySQL
echo "################################ Installing MySQL #########################################"
apt-get install mysql-server

#VLC
echo "################################ Installing VLC #########################################"
apt-get install vlc browser-plugin-vlc

#php
echo "################################ Installing PHP #########################################"
add-apt-repository ppa:ondrej/php
apt-get update
apt-get install php7.1


#Composer
echo "################################ Installing Composer #########################################"
apt-get install curl
curl -s https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

#Docker
echo "################################ Installing Docker #########################################"
apt install docker.io

#postgreSQL
echo "################################ Installing postgreSQL #########################################"
apt install postgresql postgresql-contrib






#Upgrade all
apt-get update
apt-get upgrade
apt-get dist-upgrade
apt-get autoclean && apt-get clean

