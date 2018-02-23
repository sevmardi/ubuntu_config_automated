#!/bin/bash

#Login as root before start
apt-get update
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


#Upgrade all
apt-get update
apt-get upgrade
apt-get dist-upgrade