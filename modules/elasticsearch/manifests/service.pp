class elasticsearch::service inherits elasticsearch {

  service {'elasticsearch':
    ensure => running,
  }

}
