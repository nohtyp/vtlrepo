class vtlrepo::initial_sync inherits vtlrepo {

  exec { 'Adding at command to run sync script':
    path      => '/bin:/usr/bin/',
    command   => "echo /root/initial_repo.sh |at now + 2 minute",
    unless    => "at -c 1 |grep initial_repo.sh 2> /dev/null",
    creates   => "/root/.initialreposync",
  }
}
