# == Class: vtlrepo
#
# Full description of class vtlrepo here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { vtlrepo:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class vtlrepo (
$yumrepo_dir      = $vtlrepo::params::yumrepo_dir,
$repo1            = $vtlrepo::params::repo1,
$repo2            = $vtlrepo::params::repo2,
$repo3            = $vtlrepo::params::repo3,
$vtlpkg           = $vtlrepo::params::vtlpkg,
$httpd_dir        = $vtlrepo::params::httpd_dir,

) inherits vtlrepo::params {

anchor {'vtlrepo::begin':} ->
  class {'::vtlrepo::package':} ->
  class {'::vtlrepo::file':} ->
  class {'::vtlrepo::cron':} ->
  class {'::vtlrepo::directory':} ->
anchor {'vtlrepo::end':}

}
