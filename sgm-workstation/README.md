# Installation

```bash
./install.sh
```

## per Ansible
```bash
sudo apt-get install ansible
ansible-playbook install.yml -K
```

## per Puppet
```bash
sudo apt-get install puppet
# download Puppet-Modules
puppet module install --modulepath puppet-modules puppetlabs-apt
sudo puppet apply --modulepath=puppet-modules/ install.pp
puppet apply install.pp
```

# Systemeinstellungen

* dotfiles installieren

## Thunderbird Addons
* DKIM Verifier
  https://addons.mozilla.org/de/thunderbird/addon/dkim-verifier/

* Paranoia
  https://addons.mozilla.org/de/thunderbird/addon/paranoia/

* Markdown Here
  https://addons.mozilla.org/de/thunderbird/addon/markdown-here/
