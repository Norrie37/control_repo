node default {

}

node "oci-pmaster.subnet04030040.vcn04030040.oraclevcn.com" {
  include role::master_server
  file { '/root/README':
    ensure  => file,
    content => $fqdn,
  }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
