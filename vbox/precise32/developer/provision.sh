#!/usr/bin/env bash

echo "Install Apache and setting it UP"
apt-get update
apt-get install -y apache2 
sudo sh -c 'echo "ServerName localhost" >> /etc/apache2/conf.d/name' && sudo service apache2 restart
rm -rf /var/www
ln -fs /vagrant /var/www

exit 0
