node default {

  class {'elasticsearch':
  }

  elasticsearch::plugin {[
    'mobz/elasticsearch-head',
    'karmi/elasticsearch-paramedic',
    'lukas-vlcek/bigdesk',
    'polyfractal/elasticsearch-segmentspy'
  ]:}

  elasticsearch::template {'logstash':
    content => template('template.erb'),
  }

  class {'logstash':
    require => Class['elasticsearch'],
  }

  logstash::conf {'input':
    content => template('input.erb'),
  }

  logstash::conf {'filter':
    content => template('filter.erb'),
  }

  logstash::conf {'output':
    content => template('output.erb'),
  }

}
