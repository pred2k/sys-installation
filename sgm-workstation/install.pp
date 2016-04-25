
# WIP

class { 'apt': }

apt::ppa{ 'ppa:remmina-ppa-team/remmina-next': }
apt::ppa{ 'ppa:ansible/ansible': }

$packages = ['terminator', 'shutter',
'remmina',
'remmina-plugin-rdp',
'libfreerdp-plugins-standard',]

package { $packages :
  ensure  => installed,
}

Apt::Ppa <| |> -> Package <| |>
