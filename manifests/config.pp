class xorg::config inherits xorg {

  file { $config_dir:
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => "puppet:///$config_dir_src",
    recurse => true,
  }

}
