#

#
class profile::puppetserver {

  include profile
  contain puppetdb
  contain puppetdb::master::config

  notify { "${module_name} puppetserver":
    message  => 'applied',
    loglevel => 'info',
  }

}
