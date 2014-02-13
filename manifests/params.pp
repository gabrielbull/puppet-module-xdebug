class xdebug::params {
  case $operatingsystem {
    'RedHat', 'CentOS', 'Fedora': {
      $ini_file_path = '/etc/php.d/xdebug.ini'
      $package = 'php-pecl-xdebug'
      $php = 'php-cli'
      $zend_extension_module = '/usr/lib64/php/modules/xdebug.so'
    }
    'Debian', 'Ubuntu': {
      $ini_file_path = '/etc/php5/conf.d/xdebug_config.ini'
      $package = 'php5-xdebug'
      $php = 'php5-cli'
      $zend_extension_module = '/usr/lib64/php/modules/xdebug.so'
    }
  }

  $default_enable      = '1'
  $remote_enable       = '1'
  $remote_handler      = 'dbgp'
  $remote_host         = 'localhost'
  $remote_port         = '9000'
  $remote_autostart    = '1'
  $remote_connect_back = '0'
  $remote_log          = false
  $idekey              = ''
}