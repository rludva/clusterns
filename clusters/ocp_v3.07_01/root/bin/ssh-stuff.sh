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
ssh-keyscan -H shichi-ichi-master.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H shichi-ichi-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H shichi-ichi-infra-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H shichi-ni-infra-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H shichi-san-infra-node.local.nutius.com  >> /root/.ssh/known_hosts

#
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub shichi-ichi-master.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub shichi-ichi-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub shichi-ichi-infra-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub shichi-ni-infra-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub shichi-san-infra-node.local.nutius.com
