class elasticsearch::package inherits elasticsearch {

  package {'elasticsearch':
    ensure => $version,
  }

}
