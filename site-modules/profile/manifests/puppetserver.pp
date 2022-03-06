#

#
class profile::puppetserver {
  notify { $module_name:
    message  => 'applied',
    loglevel => 'info',
  }
}
