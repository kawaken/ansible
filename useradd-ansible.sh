#!/bin/bash

useradd ansible
cat <<SUDOER > /etc/sudoers.d/ansible
Defaults:ansible    secure_path = /sbin:/bin:/usr/sbin:/usr/local/bin:/usr/bin
Defaults:ansible    env_keep += "PATH"
ansible ALL=(ALL) NOPASSWD:ALL
SUDOER

sudo -u ansible mkdir -p -m 700 /home/ansible/.ssh
sudo -u ansible curl -o /home/ansible/.ssh/authorized_keys https://github.com/kawaken.keys
chmod 600 /home/ansible/.ssh/authorized_keys


