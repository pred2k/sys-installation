# SGM Workstation (1. April 2016)
# Sys: Ubuntu 15.10 (von PXE)
# tasksel auswahl: 'Ubuntu GNOME Desktop'

# basic console tools:
sudo apt-get install vim git htop

# basic gui tools:
sudo apt-get install shutter keepassx


# Thunderbird mit Enigmail und gnupg2
sudo apt-get install thunderbird thunderbird-locale-de
sudo apt-get install enigmail gnupg2

# Atom Editor
wget -O ~/Downloads/atom-amd64.deb https://atom.io/download/deb && \
sudo dpkg -i ~/Downloads/atom-amd64.deb && \
rm ~/Downloads/atom-amd64.deb


# Vagrant
# TODO


# Tools
sudo apt-get install ruby

# Terminal-Emulator Guake
sudo apt-get install guake

# Remmina (Remote-Desktop RDP, VNC)
sudo apt-get install remmina remmina-plugin-rdp
