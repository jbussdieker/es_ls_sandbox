class logstash::service inherits logstash {

  service {'logstash':
    ensure => running,
  }

}
