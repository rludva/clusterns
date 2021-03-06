#!/bin/bash -

#
if [ -e "/root/.ssh/id_rsa" ];  then
  rm -f "/root/.ssh/id_rsa"
fi
if [ -e "/root/.ssh/id_rsa.pub" ]; then
  rm -f "/root/.ssh/id_rsa.pub"
fi

# Create public/private key..
ssh-keygen -f /root/.ssh/id_rsa -N ''

ssh-keyscan -H kyuu-ni-ichi-master.example.com >> /root/.ssh/known_hosts
ssh-keyscan -H kyuu-ni-ichi-node.example.com >> /root/.ssh/known_hosts

sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub kyuu-ni-ichi-master.example.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub kyuu-ni-ichi-node.example.com
