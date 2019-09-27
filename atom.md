
# Atom

https://atom.io/

## install

    curl -L -o Atom.zip https://atom.io/download/mac && unzip -q Atom.zip
    mv Atom.app ~/Application


MANUAL steps:  
1. Start Atom
1. Atom-Menu > 'Install Shell Commands'

### Atom metrics disabling (no stats to Google Analytics please!)
    apm disable metrics

### Install favorite Atom packages
    apm install --packages-file atom_packages.txt
