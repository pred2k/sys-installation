# SGM Workstation (1. April 2016)
# Sys: Ubuntu 15.10 (von PXE)
# tasksel auswahl: 'Ubuntu GNOME Desktop'

# basic console tools:
sudo apt-get install vim git htop
sudo apt-get install puppet facter lsb-release

# Tools
sudo apt-get install ruby
sudo gem install bundler

# basic gui tools:
sudo apt-get install shutter

# Thunderbird mit Enigmail und gnupg2
sudo apt-get install thunderbird thunderbird-locale-de
sudo apt-get install enigmail gnupg2


# Atom Editor (also use this lines for client updates!)
wget -O ~/Downloads/atom-amd64.deb https://atom.io/download/deb && \
sudo dpkg -i ~/Downloads/atom-amd64.deb && \
rm ~/Downloads/atom-amd64.deb

# Atom metrics disabling (no stats to Google Analytics please!)
apm disable metrics

# Atom Packages
apm install markdown-preview-plus
apm install language-docker
apm install language-puppet
apm install linter-js-yaml
# Lint Packages
gem install puppet-lint
apm install linter-puppet-lint
apm install linter-puppet-parse


# HipChat
sudo su
echo "deb http://hipchat.iventurecapital.com/clients/linux/apt stable main" > \
  /etc/apt/sources.list.d/atlassian-hipchat.list
wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -
apt-get update
apt-get install hipchat

# HipChat 4 from official Repo
sudo sh -c 'echo "deb https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client $(lsb_release -c -s) main" > /etc/apt/sources.list.d/atlassian-hipchat4.list'
wget -O - https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public | sudo apt-key add -
sudo apt-get update && \
sudo apt-get install hipchat4

# Vagrant
sudo apt-get install vagrant virtualbox bundler libz-dev
vagrant plugin install vagrant-r10k puppet deep_merge


# Terminal-Emulator Guake
# sudo apt-get install guake

# Remmina (Remote-Desktop RDP, VNC)
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt-get update
sudo apt-get install remmina remmina-plugin-rdp libfreerdp-plugins-standard


# KeePassX v2
KP_VERSION=2.0.2
gpg --recv-keys '164C 7051 2F79 2947 6764  AB56 FE22 C6FD 8313 5D45'
sudo apt-get build-dep keepassx
sudo apt-get install ubuntu-dev-tools cmake zlib1g-dev libgcrypt11-dev
cd ~/Downloads/
wget https://www.keepassx.org/releases/${KP_VERSION}/keepassx-${KP_VERSION}.tar.gz
wget https://www.keepassx.org/releases/${KP_VERSION}/keepassx-${KP_VERSION}.tar.gz.sig
gpg --verify keepassx-${KP_VERSION}.tar.gz
tar xf keepassx-${KP_VERSION}.tar.gz
cd keepassx-${KP_VERSION}/
mkdir build && cd build && \
cmake .. && make
sudo make install


# Ansible
sudo apt-add-repository -y ppa:ansible/ansible && \
sudo apt-get update && \
sudo apt-get install ansible


# git konfiguration
#git config --global user.name ""
#git config --global user.email ""
git config --global diff.renames true
git config --global core.editor "vim"
git config --global color.ui "auto"
