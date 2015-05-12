class memcached::services {
  require(memcached::packages)
  require(memcached::config)

  service { 'memcached':
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    ensure     => running,
  }
}
