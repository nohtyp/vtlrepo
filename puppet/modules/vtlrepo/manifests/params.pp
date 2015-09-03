class vtlrepo::params {

$yumrepo_dir     = '/etc/yum.repos.d'
$vtlpkg          = ['yum-utils', 'createrepo', 'at']
$httpd_dir       = '/var/www/html'

$repo1 = {   'reponame'       => 'glusterfs-epel',
             'vtlrepo_file'   => 'glusterfs.repo',
             'name'           => 'This is a glusterfs repo',
             'baseurl'        => 'http://download.gluster.org/pub/gluster/glusterfs/3.4/LATEST/EPEL.repo/epel-$releasever/$basearch/',
             'enabled'        => '1',
             'gpgcheck'       => '0',
         }

$repo2 = {   'reponame'       => 'centos6_epel',
             'vtlrepo_file'   => 'centos6_epel.repo',
             'name'           => 'This is a centos6 epel repo',
             'baseurl'        => 'https://dl.fedoraproject.org/pub/epel/6/x86_64/',
             'enabled'        => '1',
             'gpgcheck'       => '0',
         }

$repo3 = {   'reponame'       => 'centos7_puppetlabs',
             'vtlrepo_file'   => 'centos7_puppetlabs.repo',
             'name'           => 'This is a centos7 puppetlabs repo',
             'baseurl'        => 'http://yum.puppetlabs.com/el/7/products/x86_64/',
             'enabled'        => '1',
             'gpgcheck'       => '0',
         }
}
