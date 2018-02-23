#!/bin/bash

#Login as root before start
apt-get update
sudo apt-get install software-properties-common ansible git python-apt -y

apt-get upgrade -y

#KeePassX
apt-get install keepassx -y


echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list 
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com BBEBDCB318AD50EC6865090613B00F1FD2C19886
apt-get update
apt-get install spotify-client -y

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
sudo apt-get install tmux


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
sudo apt-get install virtualbox
sudo apt-get install vagrant


#Java
sudo add-apt-repository ppa:webupd8team/java
sudo apt update; sudo apt install oracle-java8-installer


#Smargit 
sudo add-apt-repository ppa:eugenesan/ppa
apt-get update; sudo apt-get install smartgit; 

# Node.js
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# Redis 
# sudo apt-get install build-essential tcl
# cd /tmp
# curl -O http://download.redis.io/redis-stable.tar.gz
# tar xzvf redis-stable.tar.gz
# cd redis-stable


sudo add-apt-repository ppa:synapse-core/ppa 
sudo apt-get update
sudo apt-get install synapse


#Docker
# apt-get update
# apt-get upgrade -y
# apt-get install vim htop iftop git curl -y





















#Upgrade all
apt-get update
apt-get upgrade
apt-get dist-upgrade