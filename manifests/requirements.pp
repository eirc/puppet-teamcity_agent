class teamcity_agent::requirements inherits teamcity_agent {

  if ! defined(Package['wget'])                { package { 'wget':                ensure => installed, } }
  if ! defined(Package['unzip'])               { package { 'unzip':               ensure => installed, } }
  if ! defined(Package['icedtea-6-jre-jamvm']) { package { 'icedtea-6-jre-jamvm': ensure => installed, } }

}
