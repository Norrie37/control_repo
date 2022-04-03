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
  ssh_authorized_key {'root@oci-pmaster':
    ensure  => present,
    user    => 'root',
    type    => 'ssh-rsa',
    key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLeTMTZMfzACmmFVq1RltrQYlBBf+2XD0I41RgsypAIqphABJaeqHaZInmYMq3x7VuOvK+CJbXBVy242YZq6rUTm9IkJ/0oTgfB3o5MSElXNFfq8W0yr2ItyB0sy4UOjgAeEk0WjDo8r9pF/Z4HgOnQOOfIgpZWGGI73PCr9yBl6Pi3nc5c8E9y9T0w43PxjJ8RbtD74u9LSa12HTAMhjcNQj3oBzGur6g9IUsqJvVR1PWW8mI9FXhNfi+6pNNb5X3NOZwaejQRWUmDGk1Qhf9v9cVhQou6je4AJ3EJHZGWvnR6hKtfrIUscDQIjqQm9ogirYUchhStQvJjUHk+K9F',
  }
}
