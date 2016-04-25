# Systemeinstellungen

* dotfiles installieren

# Installation mit Puppet Manifest

```bash
sudo apt-get install puppet
# download Modules
puppet module install --modulepath puppet-modules puppetlabs-apt
sudo puppet apply --modulepath=../puppet-modules/ install.pp
```

## Thuderbird Addons
* DKIM Verifier
  https://addons.mozilla.org/de/thunderbird/addon/dkim-verifier/

* Paranoia
  https://addons.mozilla.org/de/thunderbird/addon/paranoia/

* Markdown Here
  https://addons.mozilla.org/de/thunderbird/addon/markdown-here/
