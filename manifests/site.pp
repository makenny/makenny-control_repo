node 'puppetserver.localdomain' {
  include role::puppetserver
}

node 'agentcentos.localdomain' {
  include role
}

node 'agentarch.localdomain' {
  include role
}

node 'agentubuntu.localdomain' {
  include role
}

node default {
  fail("Unexpected node encountered: ${facts['fqdn']}")
}
