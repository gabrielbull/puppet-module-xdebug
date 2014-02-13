class xdebug (
  $service              = "httpd",
  $ini_file_path        = $xdebug::params::ini_file_path,
  $default_enable       = $xdebug::params::default_enable,
  $remote_enable        = $xdebug::params::remote_enable,
  $remote_handler       = $xdebug::params::remote_handler,
  $remote_host          = $xdebug::params::remote_host,
  $remote_port          = $xdebug::params::remote_port,
  $remote_autostart     = $xdebug::params::remote_autostart,
  $remote_connect_back  = $xdebug::params::remote_connect_back,
  $remote_log           = $xdebug::params::remote_log,
  $idekey               = $xdebug::params::idekey,
) inherits xdebug::params {
  $zend_extension_module = $xdebug::params::zend_extension_module

  package { "$xdebug::params::package":
    ensure => "installed",
    require => Package[$xdebug::params::php],
    notify => File[$ini_file_path],
  }

  file { "$ini_file_path" :
    content => template('xdebug/ini_file.erb'),
    ensure  => present,
    require => Package[$xdebug::params::package],
    notify  => Service[$service],
  }
}