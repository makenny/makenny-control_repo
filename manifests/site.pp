node 'prometheus.local' {
  include roles::server
}
node 'centosclient.local' {
  include roles::client
}

node 'archclient.local' {
  include roles::client
}

node 'ubuntuclient.local' {
  include roles::client
}

node default {
  fail("Unexpected node encountered: ${facts['fqdn']}")
}
