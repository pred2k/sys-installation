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

# Atom Packages
apm install markdown-preview-plus
apm install language-docker
apm install language-puppet
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

# Vagrant
sudo apt-get install vagrant virtualbox bundler libz-dev
vagrant plugin install vagrant-r10k puppet deep_merge


# Tools
sudo apt-get install ruby
sudo gem install bundler

# Terminal-Emulator Guake
sudo apt-get install guake

# Remmina (Remote-Desktop RDP, VNC)
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt-get update
sudo apt-get install remmina remmina-plugin-rdp libfreerdp-plugins-standard

# Ansible
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

# git konfiguration
#git config --global user.name ""
#git config --global user.email ""
git config --global diff.renames true
git config --global core.editor "vim"
git config --global color.ui "auto"
