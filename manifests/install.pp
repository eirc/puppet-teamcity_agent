class teamcity_agent::install inherits teamcity_agent {

  $download_command = "${wget} ${server_url}/update/buildAgent.zip"
  $unzip_command = "${unzip} buildAgent.zip -d buildAgent"

  exec { $download_command:
    cwd     => "/home/${user}",
    creates => "/home/${user}/buildAgent.zip",
    require => [ Package['wget'], User[$user] ],
    user    => $user,
  }

  exec { $unzip_command:
    cwd     => "/home/${user}",
    creates => "/home/${user}/buildAgent",
    require => [ Package['unzip'], User[$user] ],
    user    => $user,
  }

  Exec[$download_command] ->
    Exec[$unzip_command]

}
