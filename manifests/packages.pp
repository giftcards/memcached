class memcached::packages {
  $packages = [ 'memcached' ]

  package { $packages: ensure => installed }
}
