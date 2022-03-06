#

#
class roles::client {
  notify { "${module_name} client":
    message  => 'applied',
    loglevel => 'info',
  }
}
