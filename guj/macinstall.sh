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
