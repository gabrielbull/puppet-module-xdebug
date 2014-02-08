class xdebug::params {
  $ini_file_path = $operatingsystem ? {
    /Centos|RedHat|Fedora/ => '/etc/php.d/xdebug.ini',
    /Debian|Ubuntu/ => '/etc/php5/conf.d/xdebug_config.ini',
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

  $package = $operatingsystem ? {
      /Centos|RedHat|Fedora/ => 'php-pecl-xdebug',
      /Debian|Ubuntu/ => 'php5-xdebug',
  }

  $php = $operatingsystem ? {
      /Centos|RedHat|Fedora/ => 'php-cli',
      /Debian|Ubuntu/ => 'php5-cli',
  }
}