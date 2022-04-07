# Class: profile::base
#
#
class profile::base {
  user {'admin':
    ensure => present,
  }
  include profile::ssh_server
}

# Class: accounts::user { 'dan'
#   uid      => '4001',
#   gid      => '4001',
#   group    => 'staff',
#   shell    => '/bin/bash',
#   password => '!!',
#   locked   => false,
# }
#
#
class profile::accounts::user { 'bob':
  uid      => '4001',
  gid      => '4001',
  group    => 'staff',
  shell    => '/bin/bash',
  password => '!!',
  locked   => false,
}
