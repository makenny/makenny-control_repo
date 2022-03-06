#

#
class role::puppetserver (
) {

  include profile
  include profile::puppetserver
  include profile::monitoring

  notify { "${module_name} puppetserver":
    message  => 'applied',
    loglevel => 'info',
  }

  Class['profile']
  -> Class['profile::puppetserver']
  -> Class['profile::monitoring']

}
