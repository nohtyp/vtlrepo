class vtlrepo::directory inherits vtlrepo {

  file { "$httpd_dir/${repo1['reponame']}":
    ensure    => directory,
    owner     => 'root',
    group     => 'root',
    mode      => 0644,
   }

  file { "$httpd_dir/${repo2['reponame']}":
    ensure    => directory,
    owner     => 'root',
    group     => 'root',
    mode      => 0644,
   }

  file { "$httpd_dir/${repo3['reponame']}":
    ensure    => directory,
    owner     => 'root',
    group     => 'root',
    mode      => 0644,
   }
}

