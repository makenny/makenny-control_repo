#

#
class profile (
) {

  notify { "${module_name} base":
    message  => 'applied',
    loglevel => 'info',
  }

  case $trusted['certname'] {
    'puppetserver.localdomain': {
      # export host for puppet server
      $hostname_portion = split($trusted['certname'], '\.')[0]
      @@host { $trusted['certname']:
        ensure       => present,
        comment      => 'managed by puppet',
        host_aliases => [ $hostname_portion, 'puppet' ],
        ip           => $facts['ipaddress'],
      }
    }
    default: {
      # export host for everything else
      $hostname_portion = split($trusted['certname'], '\.')[0]
      @@host { $trusted['certname']:
        ensure       => present,
        comment      => 'managed by puppet',
        host_aliases => $hostname_portion,
        ip           => $facts['ipaddress'],
      }
    }
  }

  # collect hosts
  Host <<| |>>

  # resources { 'host':
  #   purge => true,
  # }

}
