class memcached::config {
  require(memcached::packages)

 file { '/etc/memcached':
  ensure  => directory,
  owner   => 'root',
  group   => 'root',
  purge   => true,
  recurse => true
 }

 file { '/etc/rc.d/init.d/memcached':
  ensure => file,
  owner  => root,
  group  => root,
  mode   => '0755',
  source => 'puppet:///modules/memcached/initd-memcached',
 }
}
