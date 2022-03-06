#

#
class profile::puppetserver {

  include profile

  notify { "${module_name} puppetserver":
    message  => 'applied',
    loglevel => 'info',
  }

}
