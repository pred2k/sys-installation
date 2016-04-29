
# WIP

class { 'apt': }

apt::ppa{ 'ppa:remmina-ppa-team/remmina-next': }
apt::ppa{ 'ppa:ansible/ansible': }
apt::ppa{ 'ppa:shutter/ppa': }

$packages = ['terminator',
'ansible',
'remmina',
'remmina-plugin-rdp',
'libfreerdp-plugins-standard',
'shutter']

package { $packages :
  ensure  => installed,
}

Apt::Ppa <| |> -> Package <| |>
