# SGM Workstation (1. April 2016)
# Sys: Ubuntu 15.10 (von PXE)
# tasksel auswahl: 'Ubuntu GNOME Desktop'

# basic console tools:
sudo apt-get install vim git htop
sudo apt-get install puppet facter lsb-release

# basic gui tools:
sudo apt-get install shutter keepassx

# Thunderbird mit Enigmail und gnupg2
sudo apt-get install thunderbird thunderbird-locale-de
sudo apt-get install enigmail gnupg2

# Atom Editor
wget -O ~/Downloads/atom-amd64.deb https://atom.io/download/deb && \
sudo dpkg -i ~/Downloads/atom-amd64.deb && \
rm ~/Downloads/atom-amd64.deb

# HipChat
sudo su
echo "deb http://hipchat.iventurecapital.com/clients/linux/apt stable main" > \
  /etc/apt/sources.list.d/atlassian-hipchat.list
wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -
apt-get update
apt-get install hipchat

# Vagrant
sudo apt-get install vagrant virtualbox bundler libz-dev
vagrant plugin install vagrant-r10k puppet deep_merge


# Tools
sudo apt-get install ruby
sudo gem install bundler

# Terminal-Emulator Guake
sudo apt-get install guake

# Remmina (Remote-Desktop RDP, VNC)
sudo apt-get install remmina remmina-plugin-rdp

# KeePassX v2 
KP_VERSION=2.0.2
sudo apt-get build-dep keepassx
sudo apt-get install ubuntu-dev-tools cmake zlib1g-dev libgcrypt11-dev
cd ~/Downloads/
wget https://www.keepassx.org/releases/${KP_VERSION}/keepassx-${KP_VERSION}.tar.gz
tar xf keepassx-${KP_VERSION}.tar.gz
cd keepassx-${KP_VERSION}/
mkdir build && cd build && \
cmake .. && make
sudo make install

# git konfiguration
#git config --global user.name ""
#git config --global user.email ""
git config --global diff.renames true
git config --global core.editor "vim"
git config --global color.ui "auto"
