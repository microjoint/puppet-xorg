class xorg::params {
  $config_dir       = '/etc/X11/xorg.conf.d'
  $config_dir_src   = 'modules/xorg/xorg.conf.d'
  $package_ensure   = 'present'
  $touchpad         = false
}
