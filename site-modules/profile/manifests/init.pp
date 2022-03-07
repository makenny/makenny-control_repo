#

#
class profile (
) {

  notify { "${module_name} base":
    message  => 'applied',
    loglevel => 'info',
  }

  # unless($trusted['certname'] == $facts['fqdn']) {
  $hostname_of_certname = split($trusted['certname'], '\.')[0]
  @@host { $trusted['certname']:
    ensure       => present,
    comment      => 'managed by puppet',
    host_aliases => $hostname_of_certname,
    ip           => $facts['ipaddress'],
  }

  Host <<| |>>

}
