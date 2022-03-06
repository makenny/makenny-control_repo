#

#
class profile::monitoring (
  Boolean $server = false,
){

  notify { $module_name:
    message  => 'applied',
    loglevel => 'info',
  }

  if $server {
    include profile::monitoring::server
  } else {
    include profile::monitoring::client
  }

}
