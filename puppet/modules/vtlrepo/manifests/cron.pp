class vtlrepo::cron inherits vtlrepo {

  cron { "Cron for ${repo1['reponame']} repo download":
    name       => "cron_${repo1['reponame']}",
    ensure     => present,
    command    => "/bin/reposync -p ${httpd_dir}/${repo1['reponame']} -n --repoid=${repo1['reponame']} -l -q",
    hour       => '1',
    minute     => '*',
    month      => '*',
    monthday   => '*',
    notify     => Exec['Creating repo1 files'],
  }

  cron { "Cron for ${repo2['reponame']} repo download":
    name       => "cron_${repo2['reponame']}",
    ensure     => present,
    command    => "/bin/reposync -p ${httpd_dir}/${repo2['reponame']} -n --repoid=${repo2['reponame']} -l -q",
    hour       => '2',
    minute     => '*',
    month      => '*',
    monthday   => '*',
    notify     => Exec['Creating repo2 files'],
  }
  cron { "Cron for ${repo3['reponame']} repo download":
    name       => "cron_${repo3['reponame']}",
    ensure     => present,
    command    => "/bin/reposync -p ${httpd_dir}/${repo3['reponame']} -n --repoid=${repo3['reponame']} -l -q",
    hour       => '3',
    minute     => '*',
    month      => '*',
    monthday   => '*',
    notify     => Exec['Creating repo3 files'],
  }
}
