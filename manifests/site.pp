node 'ubuntu' {
  $adminemail = 'webmaster@example.com'
  $servername = 'example.com'

  include apache
  include apache::vhosts
}
