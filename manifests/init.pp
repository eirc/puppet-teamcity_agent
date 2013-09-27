# == Class: teamcity_agent
#
# Full description of class teamcity_agent here.
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
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { teamcity_agent:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2013 Your name here, unless otherwise noted.
#
class teamcity_agent(

  $user        = $teamcity_agent::params::user,
  $service     = $teamcity_agent::params::service,

  $server_url  = $teamcity_agent::params::server_url,
  $agent_name  = $teamcity_agent::params::agent_name,
  $own_address = $teamcity_agent::params::own_address,
  $own_port    = $teamcity_agent::params::own_port,
  $properties  = $teamcity_agent::params::properties,

  $wget        = $teamcity_agent::params::wget,
  $unzip       = $teamcity_agent::params::unzip,

) {

  include '::teamcity_agent::requirements'
  include '::teamcity_agent::install'
  include '::teamcity_agent::config'
  include '::teamcity_agent::service'

  Class['::teamcity_agent::requirements'] ->
    Class['::teamcity_agent::install'] ->
    Class['::teamcity_agent::config'] ->
    Class['::teamcity_agent::service']

}
