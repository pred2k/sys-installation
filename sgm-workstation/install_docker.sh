# Install Docker on Ubuntu 15.10
# Source: https://docs.docker.com/engine/installation/linux/ubuntulinux/

sudo apt-get update && \
sudo apt-get install apt-transport-https ca-certificates

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo deb https://apt.dockerproject.org/repo ubuntu-$(lsb_release --codename --short) main | sudo tee /etc/apt/sources.list.d/docker.list

sudo apt-get update

sudo apt-get purge lxc-docker
# Verfiy which version is installed:
apt-cache policy docker-engine

sudo apt-get install docker-engine && \
sudo service docker start

# Add user to group
sudo usermod -aG docker basti

# check if Docker works:
sudo docker run hello-world

