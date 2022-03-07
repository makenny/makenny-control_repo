#

#
class profile (
) {

  notify { "${module_name} base":
    message  => 'applied',
    loglevel => 'info',
  }

  # create a virtual host resource based on known information
  # and export it back to the Puppet Master
  @@host { $trusted['certname']:
    ensure       => present,
    comment      => 'managed by puppet',
    host_aliases => $hostname_portion,
    ip           => $facts['ipaddress'],
  }

  Host <<| |>>

  # resources { 'host':
  #   purge => true,
  # }

}
