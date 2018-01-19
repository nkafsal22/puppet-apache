class apache  {
exec { 'apt-update':
   command => '/usr/bin/apt-get update'
     }
package { 'apache':
     name => 'apache2',
     require => Exec['apt-update'],
     ensure => installed, }
file { '/etc/apache2/apache2.conf':
     ensure => file,
     source => 'puppet:///modules/apache/apache2.conf', }
}
