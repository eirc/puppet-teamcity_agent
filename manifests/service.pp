class teamcity_agent::service inherits teamcity_agent {

  service { $service:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

}
