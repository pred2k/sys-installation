class { 'apt': }

apt::source { 'spotify':
  location => 'http://repository.spotify.com',
  repos    => 'stable non-free',
  key      => {
    'id'     => 'BBEBDCB318AD50EC6865090613B00F1FD2C19886',
    'server' => 'keyserver.ubuntu.com:80',
  },
},

#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 && \
#echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list  && \


# HexChat - https://hexchat.github.io/
apt::ppa{ 'ppa:gwendal-lebihan-dev/hexchat-stable': }

$packages = ['hexchat',
'spotify-client']

package { $packages :
  ensure  => installed,
}

Apt::Ppa <| |> -> Package <| |>
