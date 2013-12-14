class logstash(
  $version        = "present"
) {

  class {'logstash::package':
    notify => Class['logstash::service'],
  }

  class {'logstash::config':
    notify  => Class['logstash::service'],
    require => Class['logstash::package'],
  }

  class {'logstash::service':
    require => Class['logstash::config'],
  }

}
