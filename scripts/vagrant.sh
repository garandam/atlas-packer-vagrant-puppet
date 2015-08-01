#!/bin/bash

echo "start - vagrant"
# Vagrant user
useradd vagrant
echo "vagrant" | passwd --stdin vagrant
mkdir -m 0700 -p /home/vagrant/.ssh
curl https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub >> /home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

sed -i 's/^\(Defaults.*requiretty\)/#\1/' /etc/sudoers
echo "vagrant ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo 'Defaults:vagrant env_keep += SSH_AUTH_SOCK' >> /etc/sudoers.d/vagrant
echo "end - vagrant"