class vtlrepo::file inherits vtlrepo {

  file { "Repo1 config":
    ensure   => file,
    path     => "${yumrepo_dir}/${repo1['reponame']}.repo",
    owner    => 'root',
    group    => 'root',
    mode     => 0644,
    content  => template('vtlrepo/repo1.erb'),
  }

  file { "Repo2 config":
    ensure   => file,
    path     => "${yumrepo_dir}/${repo2['reponame']}.repo",
    owner    => 'root',
    group    => 'root',
    mode     => 0644,
    content  => template('vtlrepo/repo2.erb'),
  }

  file { "Repo3 config":
    ensure   => file,
    path     => "${yumrepo_dir}/${repo3['reponame']}.repo",
    owner    => 'root',
    group    => 'root',
    mode     => 0644,
    content  => template('vtlrepo/repo3.erb'),
  }
}

