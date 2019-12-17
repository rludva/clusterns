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

#
ssh-keyscan -H ichi-ichi-master.example.com >> /root/.ssh/known_hosts
ssh-keyscan -H ichi-ichi-node.example.com  >> /root/.ssh/known_hosts
ssh-keyscan -H ichi-ichi-infra-node.example.com  >> /root/.ssh/known_hosts

#
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ichi-ichi-master.example.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ichi-ichi-node.example.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ichi-ichi-infra-node.example.com
