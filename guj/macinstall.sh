# G+J Workstation (1. September 2016)
# Sys: Mac OSX 10.10.5 (Yosemite)

# commands need to be run with local-Admin user
sudo $ADMINUSER

# Homebrew installation (XCode benötigt)
# coming soon...

# pip
sudo easy_install pip

# Ansible
sudo -H pip install ansible

sudo -H pip install awscli

sudo -H pip install httpie

# activate aws command completion
# https://docs.aws.amazon.com/de_de/cli/latest/userguide/cli-command-completion.html
complete -C '/usr/local/bin/aws_completer' aws
# add line to ~/.bash_profile

# Atom
curl -L -o Atom.zip https://atom.io/download/mac && unzip -q Atom.zip
mv Atom.app ~/Application
# MANUAL step:
# Start Atom, Atom-Menu > 'Install Shell Commands'

apm install --packages-file sgm-workstation/my_atom_packages.txt


# Docker:
# https://www.docker.com/products/docker#/mac

# Vagrant:
# https://www.vagrantup.com/downloads.html


# Tools
brew install watch
brew install git-flow-avh


# Install KeePassXC
gpg --keyserver pool.sks-keyservers.net --recv-keys 0xBF5A669F2272CF4324C1FDA8CFB4C2166397D0D2
KEEPASSXC_VERSION=2.1.3
curl -L --remote-name-all https://github.com/keepassxreboot/keepassxc/releases/download/$KEEPASSXC_VERSION/KeePassXC-$KEEPASSXC_VERSION.dmg{,.digest,.sig}
gpg --verify KeePassXC-$KEEPASSXC_VERSION.dmg.sig
shasum -a 256 -c KeePassXC-$KEEPASSXC_VERSION.dmg.DIGEST
# For Linux:
# sha256sum -c KeePassXC-$KEEPASSXC_VERSION.dmg.DIGEST
