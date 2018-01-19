class apache::params {

  if $::family == 'RedHat' {
    $apachename = 'httpd'
} 
elsif $::family == 'Debian' {
    $apachename = 'apache2'
} 
else {
    print "This is not a supported distro."
  }

}
