class logstash::config inherits logstash {

  file {'/etc/default/logstash':
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template("logstash/default.erb"),
  }

  file {'/etc/default/logstash-web':
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template("logstash/default-web.erb"),
  }

}
