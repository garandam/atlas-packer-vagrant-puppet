#!/bin/bash

echo "start - virtualbox guest additions"
mkdir -p /mnt/virtualbox
mount -o loop ~/VBoxGuest*.iso /mnt/virtualbox
sh /mnt/virtualbox/VBoxLinuxAdditions.run
umount /mnt/virtualbox
rm -rf ~/VBoxGuest*.iso
echo "end - virtualbox guest additions"