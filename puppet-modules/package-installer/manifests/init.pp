# == Class: installer
#
# Full description of class installer here.
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
#  class { 'installer':
#    install => [ 'screen', 'vim' ],
#    install_custom => [ 'dolphin' ],
#    update => [ 'firefox' ],
#    purge => [ 'firefox-dev' ]
#  }
#
# === Authors
#
# Sebastian Rettenberger <sebastian.rettenberger@tum.de>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class installer
(
	$install = [],
	$install_custom = [],
	$update = [],
	$purge = []
)
{

	include installer::install
	include installer::remove

}
