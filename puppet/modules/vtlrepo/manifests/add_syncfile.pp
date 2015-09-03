class vtlrepo::add_syncfile inherits vtlrepo {

  file { 'Adding initial repo sync script to system':
    ensure     => present,
    path       => '/root/initial_repo.sh',
    owner      => 'root',
    group      => 'root',
    mode       => 0755,
    source     => 'puppet:///modules/vtlrepo/initial_repo.sh',
  }
}
