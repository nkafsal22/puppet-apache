class apache::vhosts {
if $::osfamily=='RedHat' {
 file { '/etc/httpd/conf.d/vhost.conf':
        ensure =>file,
        content =>template('apache/vhosts-rh.conf.erb'),
      }
 file {"/var/www/$server":
        ensure => directory,
      }
 file { "/var/www/$server/public_html":
        ensure => directory,
      }
 file { "/var/www/$server/logs":
        ensure => directory,
      }
}
elsif $::osfamily=='Debian' {
  file { "/etc/apache2/sites-available/$server.conf":
  ensure => file,
  content =>template('apache/vhosts-deb.conf.erb'),
      }
  file { "/var/www/$server":
  ensure => directory,
      }
  file { "/var/www/$server/public_html":
  ensure => directory, 
      }
  file { "/var/www/$server/logs":
   ensure => directory,
       }
}
else {
fail ('This is not supported version')
 }
}


