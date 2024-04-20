package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip',
  require  => Exec['install_pip'], # You might need to ensure pip is installed first
}

exec { 'install_pip':
  command => 'apt-get install -y python3-pip', # This command might vary depending on your system
  unless  => 'which pip3',
  path    => ['/bin', '/usr/bin'],
}
