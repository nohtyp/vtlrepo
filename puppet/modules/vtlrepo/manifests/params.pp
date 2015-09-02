class vtlrepo::params {

$yumrepo_dir     = '/etc/yum.repos.d'
$vtlpkg          = ['yum-utils', 'createrepo']
$httpd_dir       = '/var/www/html'

$repo1 = {   'reponame'       => 'test',
             'vtlrepo_file'   => 'test.repo',
             'name'           => 'This is a test repo',
             'baseurl'        => 'http://download.fedoraproject.org/pub/epel/7/$basearch',
             'enabled'        => '1',
             'gpgcheck'       => '0',
         }

$repo2 = {   'reponame'       => 'test2',
             'vtlrepo_file'   => 'test.repo',
             'name'           => 'This is a test repo',
             'baseurl'        => 'http://download.fedoraproject.org/pub/epel/7/$basearch',
             'enabled'        => '1',
             'gpgcheck'       => '0',
         }

$repo3 = {   'reponame'       => 'test3',
             'vtlrepo_file'   => 'test.repo',
             'name'           => 'This is a test repo',
             'baseurl'        => 'http://download.fedoraproject.org/pub/epel/7/$basearch',
             'enabled'        => '1',
             'gpgcheck'       => '0',
         }
}
