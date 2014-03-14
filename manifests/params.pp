class teamcity_agent::params {

  $user        = 'teamcity'
  $service     = 'teamcity_agent'

  $server_url  = 'http://localhost/'
  $agent_name  = $hostname
  $own_address = 'localhost'
  $own_port    = '9090'
  $properties  = { }

  $wget        = '/usr/bin/wget'
  $unzip       = '/usr/bin/unzip'

}
