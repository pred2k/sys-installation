# SGM Workstation (1. April 2016)
# Sys: Ubuntu 15.10 (von PXE)
# tasksel auswahl: 'Ubuntu GNOME Desktop'

# basic console tools:
sudo apt-get install vim git htop pydf python-pip
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

# Vagrant
sudo apt-get install vagrant virtualbox libz-dev
vagrant plugin install vagrant-r10k puppet deep_merge


# Terminal-Emulator Guake
# sudo apt-get install guake

# Remmina (Remote-Desktop RDP, VNC)
sudo apt-add-repository -y ppa:remmina-ppa-team/remmina-next && \
sudo apt-get -qq update && \
sudo apt-get install remmina remmina-plugin-rdp libfreerdp-plugins-standard


# KeePassX v2
KP_VERSION=2.0.2
gpg --keyserver hkps.pool.sks-keyservers.net --recv-keys '164C 7051 2F79 2947 6764  AB56 FE22 C6FD 8313 5D45'
sudo apt-get build-dep keepassx
sudo apt-get install ubuntu-dev-tools cmake zlib1g-dev libgcrypt11-dev
cd ~/Downloads/
wget https://www.keepassx.org/releases/${KP_VERSION}/keepassx-${KP_VERSION}.tar.gz
wget https://www.keepassx.org/releases/${KP_VERSION}/keepassx-${KP_VERSION}.tar.gz.sig
gpg --verify keepassx-${KP_VERSION}.tar.gz
tar xf keepassx-${KP_VERSION}.tar.gz
cd keepassx-${KP_VERSION}/
mkdir build && cd build && cmake .. && make
sudo make install

# Compile KeePassX in Docker container
KP_VERSION=2.0.2
gpg --keyserver hkps.pool.sks-keyservers.net --recv-keys '164C 7051 2F79 2947 6764  AB56 FE22 C6FD 8313 5D45'
mkdir -p keepassx-src
cd keepassx-src
wget https://www.keepassx.org/releases/${KP_VERSION}/keepassx-${KP_VERSION}.tar.gz
wget https://www.keepassx.org/releases/${KP_VERSION}/keepassx-${KP_VERSION}.tar.gz.sig
gpg --verify keepassx-${KP_VERSION}.tar.gz.sig || exit 1
tar xf keepassx-${KP_VERSION}.tar.gz
cd ..
docker build -t mykeepassx/builder . && docker run --rm -v ${PWD}/keepassx-src/keepassx-${KP_VERSION}/:/src mykeepassx/builder mkdir /src/build && cd /src/build && cmake .. && make


# Ansible
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
