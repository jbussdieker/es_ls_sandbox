define elasticsearch::template($content) {

  file {"${elasticsearch::params::conf_dir}/templates/${name}.json":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => $content,
    notify  => Class['elasticsearch::service'],
    require => Class['elasticsearch::config'],
  }

}
