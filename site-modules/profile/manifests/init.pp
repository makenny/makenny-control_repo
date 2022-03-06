#

#
class profile {
  notify { $module_name:
    message  => 'applied',
    loglevel => 'info',
  }
}
