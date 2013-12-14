class elasticsearch(
  $version        = "present",
  $config         = template("elasticsearch/elasticsearch.yml.erb"),
  $logging_config = template("elasticsearch/logging.yml.erb")
) {

  class {'elasticsearch::package':
    notify => Class['elasticsearch::service'],
  }

  class {'elasticsearch::config':
    notify  => Class['elasticsearch::service'],
    require => Class['elasticsearch::package'],
  }

  class {'elasticsearch::service':
    require => Class['elasticsearch::config'],
  }

}
