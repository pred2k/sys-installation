
# exfat Unterstützung installieren:
sudo apt-get install exfat-fuse exfat-utils

# h264 decoder
sudo apt-get install gstreamer1.0-libav

# Spotify Client:
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 && \
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list  && \
sudo apt-get update && \
sudo apt-get install spotify-client

sudo pip install youtube-dl

# Hexchat (Xenial supported)
sudo apt-add-repository -y ppa:gwendal-lebihan-dev/hexchat-stable  && \
sudo apt-get -qq update && \
sudo apt-get install hexchat
