#!/bin/bash

#Login as root before start
apt-get update
apt-get install software-properties-common ansible git python-apt -y

apt-get upgrade -y

#KeePassX
apt-get install keepassx -y

#Spotify
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com BBEBDCB318AD50EC6865090613B00F1FD2C19886
sudo apt-get update
sudo apt-get install spotify-client

#Git
apt-get install git -y


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
apt-get update 
apt-get install google-chrome-stable -y

#Vagrant
apt-get install virtualbox
apt-get install vagrant


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
















#Upgrade all
apt-get update
apt-get upgrade
apt-get dist-upgrade