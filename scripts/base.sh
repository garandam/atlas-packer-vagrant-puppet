#!/bin/bash

echo "start - base"
# Update repos
yum update -y --skip-broken

# Other tools
yum groupinstall -y "Development Tools"
yum install -y sudo ntp git ruby wget man curl vim bind-utils.x86_64

# NTP
chkconfig ntpd on
service ntpd stop
ntpdate pool.ntp.org
service ntpd start

# SSHD
chkconfig sshd on
chkconfig iptables off
chkconfig ip6tables off

echo "end - base"