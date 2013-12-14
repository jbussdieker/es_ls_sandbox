node default {

  class {'elasticsearch':
  }

  class {'logstash':
    require => Class['elasticsearch'],
  }

  logstash::conf {'input':
    content => template('input.erb'),
    require => Class['logstash']
  }

  logstash::conf {'output':
    content => template('output.erb'),
    require => Class['logstash']
  }

}
