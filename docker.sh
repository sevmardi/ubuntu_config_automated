#!/bin/bash

#Update the apt package index:
apt-get update

#Install packages to allow apt to use a repository over HTTPS:
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common


# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that you now have the key with the fingerprint 
apt-key fingerprint 0EBFCD88

#  set up the stable repository.
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Install Docker CE
apt-get update

# Install the latest version of Docker CE
apt-get install docker-ce

