#!/bin/bash

echo "start - puppet"
# Install Puppet repo
rpm -ivh http://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-7.noarch.rpm

# Puppet install
yum install -y puppet
echo "end - puppet"