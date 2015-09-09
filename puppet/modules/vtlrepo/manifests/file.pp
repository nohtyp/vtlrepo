class vtlrepo::file inherits vtlrepo {

  file { "CentOS 6 config directory":
    ensure   => directory,
    path     => '/etc/rh6.repos.d',
    owner    => 'root',
    group    => 'root',
    mode     => 0755,
  }

  file { "CentOS 7 config directory":
    ensure   => directory,
    path     => '/etc/rh7.repos.d',
    owner    => 'root',
    group    => 'root',
    mode     => 0755,
  }

  file { "CentOS noarch config directory":
    ensure   => directory,
    path     => '/etc/noarch.repos.d',
    owner    => 'root',
    group    => 'root',
    mode     => 0755,
  }
}

