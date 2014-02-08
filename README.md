puppet-xdebug
=============

Puppet module for installing XDEBUG PHP Extension

Installs XDEBUG Support.

Example usage:

```puppet
class { 'xdebug':
    default_enable       => '1',
    remote_enable        => '1',
    remote_handler       => 'dbgp',
    remote_host          => 'localhost',
    remote_port          => '9000',
    remote_autostart     => '1',
}
```

GitHub: https://github.com/gabrielbull/puppet-module-xdebug
