#

#
class role::puppetserver (
) {

  include profile
  include profile::puppetserver
  include profile::monitoring

  Class['profile']
  -> Class['profile::puppetserver']
  -> Class['profile::monitoring']

}
