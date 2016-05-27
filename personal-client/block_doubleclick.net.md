# Block doubleclick.net on Ubuntu Desktop

Tested with:
Ubuntu 15.10 (wily)

just an entry in the `/etc/hosts/` does not work.

## Solution:
```bash
echo 'address=/doubleclick.net/127.0.0.1
address=/ad.doubleclick.net/127.0.0.1' | sudo tee -a /etc/NetworkManager/dnsmasq.d/hosts.conf
sudo killall dnsmasq
sudo service network-manager restart
```

Source: http://askubuntu.com/a/660351
