#

#
class profile {
  notify { "${module_name} base":
    message  => 'applied',
    loglevel => 'info',
  }
}