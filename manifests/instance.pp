define memcached::instance($ip, $port = '11211', $user = 'memcached', $maxconn = '2048', $cachesize = '128', $options = '',  $ensure = 'enabled') {
 $file = "/etc/memcached/memcached_${name}.conf"

 file { $file:
  ensure  => $ensure ? {
  enabled  => present,
  disabled => absent },
  content => template('memcached/memcached_instance.erb'),
  notify  => Service['memcached']
 }

}
