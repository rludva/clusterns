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
ssh-keyscan -H che-ichi-master.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H che-ichi-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H che-ichi-infra-node.local.nutius.com  >> /root/.ssh/known_hosts

#
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub che-ichi-master.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub che-ichi-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub che-ichi-infra-node.local.nutius.com
