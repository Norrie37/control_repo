# Class: profile::ssh_server
#
#
class profile::ssh_server {
  package {'openssh-server':
    ensure  => present,
  }
  service {'sshd':
    ensure  => 'running',
    enable  => 'true',
  }
  ssh_authorized_key {'root@duna-host-vm':
    ensure  => present,
    user    => 'root',
    type    => 'ssh-rsa',
    key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABgQCz+nYfaURzHLmeAVTFNVTVSewYjgF6f3gsF1d6Sday/QJWfRu+BZCihbyy0MBKw1PT5GmsmrhtefTEnq2uonMFjSO1txIGhMYNGtcxKdXhS82OJODmW6QiwtOwEDVw4FWPyf4Ad13+V9lTGnrHnFpzMj7UP6UCLtnKvO25JdkSOOnwkNA5qiveCTRGf276OaRL0jH+eP30W4SaRQhaAoG9lbMM4/Tpavm/JDeWlHzAmIn1xnmHmwxntKTOrY82AG4VNoBFw4pSZzM1p/BlUxIRdyAgqcp0LBo+PGREIXNGdesf17bELXPgNS0ZRu6fgDm/PByDNvVzH05jcxKHkau3kYgwiZgVwsKrf1FSwZJhCc+PHhJCdJ603K48r/lj/i5TUrQhjJshapWai9otPQyEuIXpiblOnoyCHSoKzgCRyqezZa1C2T86l4jSQAl5IX64ngj5g4s09Q19yTzeb+INaZRLQ8TIBWnXXtSoHa1CyXTLiVGHU6Yask+Kv4G53YU=',
  }
}
