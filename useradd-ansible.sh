#!/bin/bash

useradd ansible
echo "ansible ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ansible
sudo -u ansible mkdir -p -m 700 /home/ansible/.ssh
sudo -u ansible curl -o /home/ansible/.ssh/authorized_keys https://github.com/kawaken.keys
chmod 600 /home/ansible/.ssh/authorized_keys


