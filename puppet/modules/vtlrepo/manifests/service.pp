class vtlrepo::service inherits vtlrepo {

  service {'Starting at service':
    ensure        => running,
    name          => 'atd',
    enable        => true,
    hasrestart    => true,
    hasstatus     => true,
    require       => Package['at'],
  }
}
