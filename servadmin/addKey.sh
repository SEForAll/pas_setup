#!/usr/bin/env bash

user=$1
key=$2

mkdir /home/$user/.ssh
echo "$2" >> /home/$user/.ssh/authorized_keys

chown -R $user:$user /home/$user/.ssh
chmod -R 700 /home/$user/.ssh

exit 0
