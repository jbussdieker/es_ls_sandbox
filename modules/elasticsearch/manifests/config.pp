class elasticsearch::config inherits elasticsearch {

  file {'/etc/default/elasticsearch':
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template("elasticsearch/default.erb"),
  }

  file {'/etc/elasticsearch/elasticsearch.yml':
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => $config,
  }

  file {'/etc/elasticsearch/logging.yml':
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => $logging_config,
  }

}
