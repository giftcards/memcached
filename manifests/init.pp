class memcached {
  include memcached::packages
  include memcached::services
  include memcached::config

}
