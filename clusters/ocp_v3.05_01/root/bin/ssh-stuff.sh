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
ssh-keyscan -H go-ichi-master.example.com >> /root/.ssh/known_hosts
ssh-keyscan -H go-ichi-node.example.com  >> /root/.ssh/known_hosts
ssh-keyscan -H go-ichi-infra-node.example.com  >> /root/.ssh/known_hosts

#
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub go-ichi-master.example.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub go-ichi-node.example.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub go-ichi-infra-node.example.com

# Create public/private key on master..
ssh go-ichi-master.example.com "ssh-keygen -f /root/.ssh/id_rsa -N ''"

#
ssh go-ichi-master.example.com "ssh-keyscan -H go-ichi-node.example.com >> /root/.ssh/known_hosts"
ssh go-ichi-master.example.com "ssh-keyscan -H go-ichi-infra-node.example.com >> /root/.ssh/known_hosts"

#
ssh go-ichi-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub go-ichi-node.example.com"
ssh go-ichi-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub go-ichi-infra-node.example.com"
