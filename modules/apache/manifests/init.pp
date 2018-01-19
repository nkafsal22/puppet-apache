class apache (
  $apachename   = $::apache::params::apachename,
) inherits ::apache::params   {
exec { 'apt-update':
   command => '/usr/bin/apt-get update'
     }
package { 'apache':
     name => $apachename,
     require => Exec['apt-update'],
     ensure => installed, }
file { '/etc/apache2/apache2.conf':
     ensure => file,
     source => 'puppet:///modules/apache/apache2.conf', }
}
