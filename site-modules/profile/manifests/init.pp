#

#
class profile (
) {

  notify { "${module_name} base":
    message  => 'applied',
    loglevel => 'info',
  }

  # unless($trusted['certname'] == $facts['fqdn']) {
  $hostname_portion = split($trusted['certname'], '\.')[0]
  @@host { $trusted['certname']:
    ensure       => present,
    comment      => 'managed by puppet',
    host_aliases => $hostname_portion,
    ip           => $facts['ipaddress'],
    tag          => 'automatic hosts',
  }

  Host <<| tag == 'automatic hosts' |>>

}
