class vtlrepo::initial_sync inherits vtlrepo {

  exec { 'Adding at command to run sync script':
    path      => '/bin:/usr/bin/',
    command   => "echo /root/initial_repo.sh |at now + 2 minute",
    creates   => "/root/.initialreposync",
  }
}
