class vtlrepo::params {

$yumrepo_dir     = '/etc/yum.repos.d'
$vtlpkg          = ['yum-utils', 'createrepo', 'at']
$httpd_dir       = '/var/www/html'
$glusterfs_epel  = { 'reponame'       => 'glusterfs_epel',
                     'name'           => 'This is a glusterfs repo',
                     'baseurl'        => 'http://download.gluster.org/pub/gluster/glusterfs/3.4/LATEST/EPEL.repo/epel-$releasever/$basearch/',
                     'enabled'        => '1',
                     'gpgcheck'       => '0',
                   }

$centos6_epel    = { 'reponame'       => 'centos6_epel',
                     'name'           => 'This is a centos6 epel repo',
                     'baseurl'        => 'https://dl.fedoraproject.org/pub/epel/6/x86_64/',
                     'enabled'        => '1',
                     'gpgcheck'       => '0',
                   }

$centos6_base    = { 'reponame'       => 'centos6_base',
                     'name'           => 'This is a centos6 base repo',
                     'baseurl'        => 'http://mirror.centos.org/centos/6/os/x86_64/',
                     'enabled'        => '1',
                     'gpgcheck'       => '0',
                   }

$centos6_extras  = { 'reponame'       => 'centos6_extras',
                     'name'           => 'This is a centos6 extras repo',
                     'baseurl'        => 'http://mirror.centos.org/centos/6/extras/x86_64/',
                     'enabled'        => '1',
                     'gpgcheck'       => '0',
                   }

$centos6_puppet = { 'reponame'        => 'centos6_puppet',
                     'name'           => 'This is a centos6 puppet repo',
                     'baseurl'        => 'http://yum.puppetlabs.com/el/6/products/x86_64/',
                     'enabled'        => '1',
                     'gpgcheck'       => '0',
                   }

$centos6_puppet_deps = { 'reponame'   => 'centos6_puppet_deps',
                     'name'           => 'This is a centos6 puppet deps repo',
                     'baseurl'        => 'http://mirror.centos.org/centos/6/extras/x86_64/',
                     'enabled'        => '1',
                     'gpgcheck'       => '0',
                   }

$centos6_updates = { 'reponame'   => 'centos6_updates',
                     'name'           => 'This is a centos6 updates repo',
                     'baseurl'        => 'http://mirror.centos.org/centos/6/updates/x86_64/',
                     'enabled'        => '1',
                     'gpgcheck'       => '0',
                   }

$centos7_puppet  = { 'reponame'       => 'centos7_puppetlabs',
                     'name'           => 'This is a centos7 puppetlabs repo',
                     'baseurl'        => 'http://yum.puppetlabs.com/el/7/products/x86_64/',
                     'enabled'        => '1',
                     'gpgcheck'       => '0',
                   }

$centos7_puppet_deps  = { 'reponame'  => 'centos7_puppetlabs_deps',
                     'name'           => 'This is a centos7 puppetlabs deps repo',
                     'baseurl'        => 'http://yum.puppetlabs.com/el/7/dependencies/x86_64/',
                     'enabled'        => '1',
                     'gpgcheck'       => '0',
                   }

$centos7_base    = { 'reponame'       => 'centos7_base',
                     'name'           => 'This is a centos7 base repo',
                     'baseurl'        => 'http://mirror.centos.org/centos/7/os/x86_64/',
                     'enabled'        => '1',
                     'gpgcheck'       => '0',
                   }

$centos7_epel    = { 'reponame'       => 'centos7_epel',
                     'name'           => 'This is a centos7 epel repo',
                     'baseurl'        => 'http://dl.fedoraproject.org/pub/epel/7/x86_64/',
                     'enabled'        => '1',
                     'gpgcheck'       => '0',
                   }

$centos7_extras  = { 'reponame'       => 'centos7_extras',
                     'name'           => 'This is a centos7 extras repo',
                     'baseurl'        => 'http://mirror.centos.org/centos/7/extras/x86_64/',
                     'enabled'        => '1',
                     'gpgcheck'       => '0',
                   }

$centos7_updates = { 'reponame'       => 'centos7_updates',
                     'name'           => 'This is a centos7 updates repo',
                     'baseurl'        => 'http://mirror.centos.org/centos/7/updates/x86_64/',
                     'enabled'        => '1',
                     'gpgcheck'       => '0',
                   }

$rh6conf         = { 'cachedir'       => '/var/cache/yum/repoync.rh6/$basearch/$releasever',
                     'keepcache'      => '0',
                     'debuglevel'     => '2',
                     'logfile'        => '/var/log/reposync.rh6.log',
                     'exactarch'      => '1',
                     'obsoletes'      => '1',
                     'gpgcheck'       => '1',
                     'plugins'        => '0',
                     'reposdir'       => '/etc/rh6.repos.d',
                   }


$rh7conf         = { 'cachedir'       => '/var/cache/yum/repoync.rh7/$basearch/$releasever',
                     'keepcache'      => '0',
                     'debuglevel'     => '2',
                     'logfile'        => '/var/log/reposync.rh7.log',
                     'exactarch'      => '1',
                     'obsoletes'      => '1',
                     'gpgcheck'       => '1',
                     'plugins'        => '0',
                     'reposdir'       => '/etc/rh7.repos.d',
                   }

$noarchconf      = { 'cachedir'       => '/var/cache/yum/repoync.noarch/$basearch/$releasever',
                     'keepcache'      => '0',
                     'debuglevel'     => '2',
                     'logfile'        => '/var/log/reposync.noarch.log',
                     'exactarch'      => '1',
                     'obsoletes'      => '1',
                     'gpgcheck'       => '1',
                     'plugins'        => '0',
                     'reposdir'       => '/etc/noarch.repos.d',
                   }

$repos = { 'glusterfs-epel'   => {
                                   'ensure'         => present,
                                   'path'           => '/etc/noarch.repos.d/glusterfs-epel.repo',
                                   'content'        => template('vtlrepo/glusterfs-epel.erb'),
                                },

           'centos6-base'     => { 
                                   'ensure'         => present,
                                   'path'           => '/etc/rh6.repos.d/centos6-base.repo',
                                   'content'        => template('vtlrepo/centos6_base.erb'), 
                                },

           'centos6-epel'     => { 
                                   'ensure'         => present,
                                   'path'           => '/etc/rh6.repos.d/centos6-epel.repo',
                                   'content'        => template('vtlrepo/centos6_epel.erb'), 
                                },

           'centos6-extras'   => { 
                                   'ensure'         => present,
                                   'path'           => '/etc/rh6.repos.d/centos6-extras.repo',
                                   'content'        => template('vtlrepo/centos6_extras.erb'), 
                                },

           'centos6-puppet'   => { 
                                   'ensure'         => present,
                                   'path'           => '/etc/rh6.repos.d/centos6-puppet.repo',
                                   'content'        => template('vtlrepo/centos6_puppet.erb'), 
                                },

           'centos6-puppet_deps'   => { 
                                   'ensure'         => present,
                                   'path'           => '/etc/rh6.repos.d/centos6-puppet-deps.repo',
                                   'content'        => template('vtlrepo/centos6_puppet_deps.erb'), 
                                },

           'centos6-updates'   => { 
                                   'ensure'         => present,
                                   'path'           => '/etc/rh6.repos.d/centos6-updates.repo',
                                   'content'        => template('vtlrepo/centos6_updates.erb'), 
                                },

           'centos7-puppet'   => {
                                   'ensure'         => present,
                                   'path'           => '/etc/rh7.repos.d/centos7-puppet.repo',
                                   'content'        => template('vtlrepo/centos7_puppet.erb'),
                                },

           'centos7-puppet-deps'   => {
                                   'ensure'         => present,
                                   'path'           => '/etc/rh7.repos.d/centos7-puppet-deps.repo',
                                   'content'        => template('vtlrepo/centos7_puppet_deps.erb'),
                                },

           'centos7-base'   => {
                                   'ensure'         => present,
                                   'path'           => '/etc/rh7.repos.d/centos7-base.repo',
                                   'content'        => template('vtlrepo/centos7_base.erb'),
                                },

           'centos7-epel'   => {
                                   'ensure'         => present,
                                   'path'           => '/etc/rh7.repos.d/centos7-epel.repo',
                                   'content'        => template('vtlrepo/centos7_epel.erb'),
                                },

           'centos7-extras' => {
                                   'ensure'         => present,
                                   'path'           => '/etc/rh7.repos.d/centos7-extras.repo',
                                   'content'        => template('vtlrepo/centos7_extras.erb'),
                                },

           'centos7-updates' => {
                                   'ensure'         => present,
                                   'path'           => '/etc/rh7.repos.d/centos7-updates.repo',
                                   'content'        => template('vtlrepo/centos7_updates.erb'),
                                },

    }

$myconfigs = { 'rh6.conf'     => { 
                                   'ensure'         => present,
                                   'path'           => '/etc/rh6.conf',
                                   'content'        => template('vtlrepo/rh6conf.erb'),
                                },

               'rh7.conf'     => {
                                   'ensure'         => present,
                                   'path'           => '/etc/rh7.conf',
                                   'content'        => template('vtlrepo/rh7conf.erb'),
                                },

               'noarch.conf'  => {
                                   'ensure'         => present,
                                   'path'           => '/etc/noarch.conf',
                                   'content'        => template('vtlrepo/noarchconf.erb'),
                                },

          }

$vtlrepocrons = { 'rh6reposync'  => {
                                   'ensure'         => present,
                                   'name'           => 'rh6 reposync',
                                   'command'        => '/bin/reposync -p /var/www/html/rh6/ -c /etc/rh6.conf -l -q -n',
                                   'hour'           => '1',
                                   'minute'         => '*',
                                   'month'          => '*',
                                   'monthday'       => '*',
                                 },
                                 
                 'rh7reposync'   => {
                                   'ensure'         => present,
                                   'name'           => 'rh7 reposync',
                                   'command'        => '/bin/reposync -p /var/www/html/rh7/ -c /etc/rh7.conf -l -q -n',
                                   'hour'           => '3',
                                   'minute'         => '*',
                                   'month'          => '*',
                                   'monthday'       => '*',
                                 },

                 'noarchreposync' => {
                                   'ensure'         => present,
                                   'name'           => 'noarch reposync',
                                   'command'        => '/bin/reposync -p /var/www/html/noarch/ -c /etc/noarch.conf -l -q -n',
                                   'hour'           => '5',
                                   'minute'         => '*',
                                   'month'          => '*',
                                   'monthday'       => '*',
                                 },

                 'glusterfs-epel' =>  {
                                   'ensure'         => present,
                                   'name'           => 'noarch createrepo',
                                   'command'        => '/bin/createrepo -q /var/www/html/noarch/glusterfs-epel',
                                   'hour'           => '7',
                                   'minute'         => '*',
                                   'month'          => '*',
                                   'monthday'       => '*',
                                  },

                 'centos6-epel'   =>  {
                                   'ensure'         => present,
                                   'name'           => 'centos6-epel createrepo',
                                   'command'        => '/bin/createrepo -q /var/www/html/rh6/centos6-epel',
                                   'hour'           => '8',
                                   'minute'         => '*',
                                   'month'          => '*',
                                   'monthday'       => '*',
                                 },

                 'centos7-puppet' =>  {
                                   'ensure'         => present,
                                   'name'           => 'centos7-puppet createrepo',
                                   'command'        => '/bin/createrepo -q /var/www/html/rh7/centos7-pupppet',
                                   'hour'           => '9',
                                   'minute'         => '*',
                                   'month'          => '*',
                                   'monthday'       => '*',
                                 },
                    }
}
