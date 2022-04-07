# Class: profile::base
#
#
class profile::base {
  user {'admin':
    ensure => present,
  }
  include profile::ssh_server
}

accounts::user { 'bob':
  uid      => '4001',
  gid      => '4001',
  group    => 'staff',
  shell    => '/bin/bash',
  password => '!!',
  locked   => false,
}
