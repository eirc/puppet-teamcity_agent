class teamcity_agent::config inherits teamcity_agent {

  file { "/home/${user}/buildAgent/conf/buildAgent.properties":
    ensure  => 'present',
    replace => 'no',
    content => template('teamcity_agent/buildAgent.properties.erb'),
    owner   => $user,
  }

  file { "/home/${user}/buildAgent/bin/agent.sh":
    mode => '0755',
  }

  file { "/etc/init.d/${service}":
    ensure  => 'present',
    content => template('teamcity_agent/init_script.erb'),
    mode    => '0755',
  }

}
