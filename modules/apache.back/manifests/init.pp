class apache {
exec { 'apt-update':
   command => '/usr/bin/apt-get update'
     }
package { apache:
   name => $apachename,
   require => Exec['apt-update'],
   ensure => installed,
  }
} 
