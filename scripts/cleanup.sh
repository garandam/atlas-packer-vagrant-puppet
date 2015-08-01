#!/bin/bash

echo "start - cleanup"
rm -rf /tmp/*
rm -f /var/log/wtmp
rm -f /var/log/btmp
yum clean all
history -c
echo "end - cleanup"