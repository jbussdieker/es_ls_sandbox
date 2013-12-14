class elasticsearch::config inherits elasticsearch {

  file {"${default_dir}/elasticsearch":
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => template("elasticsearch/default.erb"),
  }

  file {"${conf_dir}/elasticsearch.yml":
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => $config,
  }

  file {"${conf_dir}/logging.yml":
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    content => $logging_config,
  }

}
