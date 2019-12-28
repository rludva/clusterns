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
ssh-keyscan -H minia-node.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H minie-node.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H minii-node.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H minio-node.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H miniu-node.local.nutius.com >> /root/.ssh/known_hosts

#
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub minia-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub minie-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub minii-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub minio-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub miniu-node.local.nutius.com
