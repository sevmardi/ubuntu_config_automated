# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
sudo systemctl status docker

# 
# Additional Steps
# Docker communicates via a UNIX socket that is owned by the root user. We can avoid having to type sudo by following these steps:

sudo groupadd docker
sudo usermod -aG docker $USER
docker run --rm hello-world


