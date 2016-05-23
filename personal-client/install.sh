
# exfat Unterstützung installieren:
sudo apt-get install exfat-fuse exfat-utils

# h264 decoder
sudo apt-get install gstreamer1.0-libav

# Spotify Client:
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 && \
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list  && \
sudo apt-get update && \
sudo apt-get install spotify-client

sudo -H pip install --upgrade pip
sudo -H pip install --upgrade youtube-dl httpie

# HexChat - https://hexchat.github.io/ (Ubuntu Xenial supported)
sudo apt-add-repository -y ppa:gwendal-lebihan-dev/hexchat-stable && \
sudo apt-get -qq update && \
sudo apt-get install hexchat


# Install Jitsi (Check https://jitsi.org/ or https://download.jitsi.org/jitsi/debian/ for latest Version first!)
# Installing the .deb also adds Jitsi repository to sources list and gpg key
JITSI_VERSION=2.8.5426-1
JITSI_ARCHITECTURE=$(dpkg --print-architecture)
wget https://download.jitsi.org/jitsi/debian/jitsi_${JITSI_VERSION}_${JITSI_ARCHITECTURE}.deb && sudo dpkg -i jitsi_${JITSI_VERSION}_${JITSI_ARCHITECTURE}.deb && \
sudo apt-get install -f


# Install Veracrypt

# Get Veracrypt Publickey, if you dont have it already
wget https://www.idrix.fr/VeraCrypt/VeraCrypt_PGP_public_key.asc
gpg --with-fingerprint VeraCrypt_PGP_public_key.asc
# Check if Fingerprint is 993B 7D7E 8E41 3809 828F  0F29 EB55 9C7C 54DD D393
gpg --import VeraCrypt_PGP_public_key.asc

# Download Veracrypt from https://veracrypt.codeplex.com/wikipage?title=Downloads
 # veracrypt-1.17-setup.tar.bz2(.sig):
wget -O veracrypt.tar.bz2 'https://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=veracrypt&DownloadId=1537179&FileTime=130999181365600000&Build=21031'
wget -O veracrypt.tar.bz2.sig 'https://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=veracrypt&DownloadId=1537182&FileTime=130999181380930000&Build=21031'
gpg --verify veracrypt.tar.bz2.sig

tar xf veracrypt.tar.bz2
sudo bash veracrypt-1.17-setup-gui-x64
