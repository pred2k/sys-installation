# SGM Workstation (1. April 2016)
# Sys: Ubuntu 15.10 amd64 (von PXE)
# tasksel auswahl: 'Ubuntu GNOME Desktop'

# basic console tools:
sudo apt-get install vim git htop pydf python-pip python-dev jq
sudo apt-get install puppet facter lsb-release

# Tools
sudo apt-get install ruby
sudo gem install bundler hiera-eyaml
sudo -H pip install --upgrade pip
sudo -H pip install --upgrade git-lint httpie

# basic gui tools:
sudo apt-get install meld gitg shutter vokoscreen

# Thunderbird with Enigmail and gnupg2
sudo apt-get install thunderbird thunderbird-locale-de
sudo apt-get install enigmail gnupg2


# Atom Editor (also use this lines for updates!)
wget -O ~/Downloads/atom-amd64.deb https://atom.io/download/deb && \
sudo dpkg -i ~/Downloads/atom-amd64.deb && \
rm ~/Downloads/atom-amd64.deb

# Atom metrics disabling (no stats to Google Analytics please!)
apm disable metrics

# Lint Packages for Puppet (req. by Atom Package 'linter-puppet-lint')
gem install puppet-lint

# Atom Packages
apm install --packages-file my_atom_packages.txt


# HipChat 4 from official Repo
sudo sh -c 'echo "deb [arch=amd64] https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client $(lsb_release -c -s) main" > /etc/apt/sources.list.d/atlassian-hipchat4.list'
wget -O - https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public | sudo apt-key add -
sudo apt-get update && \
sudo apt-get install hipchat4

sudo apt-get install virtualbox libz-dev
# Vagrant from ubuntu repo
# sudo apt-get install vagrant

# Vagrant (latest)- https://www.vagrantup.com
VA_VERSION=1.8.5
cd ~/Downloads/
wget https://releases.hashicorp.com/vagrant/${VA_VERSION}/vagrant_${VA_VERSION}_SHA256SUMS
wget https://releases.hashicorp.com/vagrant/${VA_VERSION}/vagrant_${VA_VERSION}_SHA256SUMS.sig
wget https://releases.hashicorp.com/vagrant/${VA_VERSION}/vagrant_${VA_VERSION}_x86_64.deb
# Hashicorp GPG Key (https://www.hashicorp.com/security.html or https://keybase.io/hashicorp)
gpg --keyserver hkps.pool.sks-keyservers.net --recv-keys '91A6 E7F8 5D05 C656 30BE F189 5185 2D87 348F FC4C'
gpg --verify vagrant_${VA_VERSION}_SHA256SUMS.sig || exit 1
grep vagrant_${VA_VERSION}_x86_64.deb vagrant_${VA_VERSION}_SHA256SUMS | sha256sum -c || exit 1
sudo dpkg -i vagrant_${VA_VERSION}_x86_64.deb

# Needed Vagrant plugins for puppet
vagrant plugin install vagrant-r10k puppet deep_merge

# Terraform - https://www.terraform.io/
TF_VERSION=0.7.0-rc3
cd ~/Downloads/
wget https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_SHA256SUMS
wget https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_SHA256SUMS.sig
wget https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip
# Hashicorp GPG Key (https://www.hashicorp.com/security.html or https://keybase.io/hashicorp)
gpg --keyserver hkps.pool.sks-keyservers.net --recv-keys '91A6 E7F8 5D05 C656 30BE F189 5185 2D87 348F FC4C'
gpg --verify terraform_${TF_VERSION}_SHA256SUMS.sig || exit 1
grep terraform_${TF_VERSION}_linux_amd64.zip terraform_${TF_VERSION}_SHA256SUMS | sha256sum -c || exit 1
unzip terraform_${TF_VERSION}_linux_amd64.zip
sudo mv terraform /usr/local/bin/
rm terraform*


# Terminal-Emulator Guake
# sudo apt-get install guake

# Remmina (Remote-Desktop RDP, VNC)
sudo apt-add-repository -y ppa:remmina-ppa-team/remmina-next && \
sudo apt-get -qq update && \
sudo apt-get install remmina remmina-plugin-rdp libfreerdp-plugins-standard


# KeePassX v2 - https://www.keepassx.org/
KP_VERSION=2.0.2
sudo apt-get build-dep keepassx
sudo apt-get install ubuntu-dev-tools cmake zlib1g-dev libgcrypt11-dev
cd ~/Downloads/
wget https://www.keepassx.org/releases/${KP_VERSION}/keepassx-${KP_VERSION}.tar.gz
wget https://www.keepassx.org/releases/${KP_VERSION}/keepassx-${KP_VERSION}.tar.gz.sig
gpg --keyserver hkps.pool.sks-keyservers.net --recv-keys '164C 7051 2F79 2947 6764  AB56 FE22 C6FD 8313 5D45'
gpg --verify keepassx-${KP_VERSION}.tar.gz
tar xf keepassx-${KP_VERSION}.tar.gz
cd keepassx-${KP_VERSION}/
mkdir build && cd build && cmake .. && make
sudo make install

# Compile KeePassX in Docker container
KP_VERSION=2.0.2
mkdir -p keepassx-src
cd keepassx-src
wget https://www.keepassx.org/releases/${KP_VERSION}/keepassx-${KP_VERSION}.tar.gz
wget https://www.keepassx.org/releases/${KP_VERSION}/keepassx-${KP_VERSION}.tar.gz.sig
gpg --keyserver hkps.pool.sks-keyservers.net --recv-keys '164C 7051 2F79 2947 6764  AB56 FE22 C6FD 8313 5D45'
gpg --verify keepassx-${KP_VERSION}.tar.gz.sig || exit 1
tar xf keepassx-${KP_VERSION}.tar.gz
cd ..
docker build -t mykeepassx/builder . && docker run --rm -v ${PWD}/keepassx-src/keepassx-${KP_VERSION}/:/src mykeepassx/builder mkdir /src/build && cd /src/build && cmake .. && make


# Ansible (better install from pip!)
sudo apt-add-repository -y ppa:ansible/ansible && \
sudo apt-get -qq update && \
sudo apt-get install ansible


# git configuration
#git config --global user.name ""
#git config --global user.email ""
git config --global diff.renames true
git config --global core.editor "vim"
git config --global color.ui "auto"

# remove useless GNOME Apps:
sudo apt-get purge cheese aisleriot gnome-mahjongg gnome-sudoku gnome-mines

# Gnome Extensions:
# 'Media control for Spotify'
# https://extensions.gnome.org/extension/55/media-player-indicator/
