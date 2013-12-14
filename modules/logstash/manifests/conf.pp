define logstash::conf($content = "") {

  file {"/etc/logstash/conf.d/${name}.conf":
    ensure  => present,
    content => $content,
    notify  => Class['logstash::service'],
  }

}
