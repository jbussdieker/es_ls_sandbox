class logstash::package inherits logstash {

  package {'logstash':
    ensure => $version,
  }

}
