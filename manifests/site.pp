node default {

  class {'elasticsearch':
  }

  elasticsearch::plugin {[
    'mobz/elasticsearch-head',
    'karmi/elasticsearch-paramedic',
    'lukas-vlcek/bigdesk',
    'polyfractal/elasticsearch-segmentspy'
  ]:}

  class {'logstash':
    require => Class['elasticsearch'],
  }

  logstash::conf {'input':
    content => template('input.erb'),
  }

  logstash::conf {'output':
    content => template('output.erb'),
  }

}
