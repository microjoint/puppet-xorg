# install xorg packages
class xorg::install inherits xorg {

  package { 'xorg-server':
    ensure  => $package_ensure,
   # require => Package['video-card'],
  }
  package { 'xorg-xinit':
    ensure  => $package_ensure,
    require => Package['xorg-server'],
  }
  if $touchpad == true {
    package{ 'xf86-input-synaptics':
        ensure => $package_ensure,
        require => Package['xorg-server'],
    }

  }
}
