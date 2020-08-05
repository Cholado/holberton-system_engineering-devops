# Puppet manifest set up client SSH config file allows
# connect to server without typing a password.


file_line { 'passwd auth off':
ensure => 'present',
path   => '/etc/ssh/ssh_config',
line   => 'PasswordAuthentication no',
}

file_line { 'Identity File':
ensure => 'present',
path   => '/etc/ssh/ssh_config',
line   => 'IdentityFile ~/.ssh/holberton',
}
