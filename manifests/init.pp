class xorg (
  $config_dir        = $xorg::params::config_dir,
  $config_dir_src    = $xorg::params::config_dir_src,
  $package_ensure    = $xorg::params::package_ensure,
  $touchpad          = $xorg::params::touchpad,
) inherits xorg::params {

  validate_absolute_path($config_dir)
  validate_string($config_dir_src)
  validate_string($package_ensure)
  validate_bool($touchpad)

  include '::xorg::install'
  include '::xorg::config'

  Class['::xorg::install'] -> Class['::xorg::config']
}
