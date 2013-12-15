define elasticsearch::plugin() {

  $short_name = regsubst($name, '^(.*)\/(elasticsearch-)?(.*)$', '\3')

  exec {"elasticsearch_plugin_${short_name}":
    command => "${elasticsearch::params::source_dir}/bin/plugin --install ${name}",
    creates => "${elasticsearch::params::source_dir}/plugins/${short_name}",
    notify  => Class['elasticsearch::service'],
    require => Class["elasticsearch::config"],
  }

}
