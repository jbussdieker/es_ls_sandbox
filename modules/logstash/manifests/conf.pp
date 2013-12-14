define logstash::conf($content = "") {

  file {"/etc/logstash/conf.d/${name}.conf":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => $content,
    notify  => Class['logstash::service'],
    require => Class['logstash::package'],
  }

}
