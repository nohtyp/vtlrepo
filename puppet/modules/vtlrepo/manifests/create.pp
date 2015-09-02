class vtlrepo::create inherits vtlrepo {

  exec { 'Creating repo1 files':
    path      => '/bin:/usr/bin',
    cwd       => $httpd_dir,
    command   => "createrepo -q ${repo1['reponame']}",
  }
  exec { 'Creating repo2 files':
    path      => '/bin:/usr/bin',
    cwd       => $httpd_dir,
    command   => "createrepo -q ${repo2['reponame']}",
  }
  exec { 'Creating repo3 files':
    path      => '/bin:/usr/bin',
    cwd       => $httpd_dir,
    command   => "createrepo -q ${repo3['reponame']}",
  }
}
