class elasticsearch::config inherits elasticsearch {

  file {"${default_dir}/elasticsearch":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template("elasticsearch/default.erb"),
  }

  file {"${conf_dir}/elasticsearch.yml":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => $config,
  }

  file {"${conf_dir}/logging.yml":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => $logging_config,
  }

  file {"${conf_dir}/templates":
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => 0755,
  }

}
