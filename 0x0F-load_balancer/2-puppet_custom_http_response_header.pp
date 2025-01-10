#!/usr/bin/env bash
# configuration with puppet

exec { 'configure_nginx':
  command => 'sudo apt-get update -y &&
              sudo apt-get install nginx -y &&
              sudo sed -i "/server_name _/a add_header X-Served-By HOSTNAME;" /etc/nginx/sites-enabled/default &&
              sudo service nginx restart',
  path    => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
  unless  => 'grep -q "add_header X-Served-By" /etc/nginx/sites-enabled/default',
}
