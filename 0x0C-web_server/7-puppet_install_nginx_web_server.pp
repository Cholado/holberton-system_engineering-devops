#install and configure an Nginx server using Puppet manifest
package { 'nginx':
ensure => installed,
}

file { '/var/www/html/index.html':
content => 'Holberton School',
}

file { '/etc/nginx/html/index.html':
content => 'Holberton School',
}

file { '/usr/share/nginx/html/index.html':
content => 'Holberton School',
}

file_line { 'Add redirection, 301':
path   => '/etc/nginx/sites-available/default',
ensure => 'present',
after  => 'listen 80 default_server',
line   => 'rewrite ^/redirect_me http://www.staggeringbeauty.com/;',
}

service { 'nginx':
ensure  => running,
require => Package['nginx'],
}
