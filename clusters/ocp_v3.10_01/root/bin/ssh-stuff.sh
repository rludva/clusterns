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
ssh-keyscan -H ju-ichi-master.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H ju-ichi-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H ju-ni-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H ju-ichi-infra-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H ju-ni-infra-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H ju-san-infra-node.local.nutius.com  >> /root/.ssh/known_hosts

#
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ju-ichi-master.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ju-ichi-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ju-ni-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ju-ichi-infra-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ju-ni-infra-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ju-san-infra-node.local.nutius.com

#
ssh ju-ichi-master.local.nutius.com "ssh-keygen -f /root/.ssh/id_rsa -N ''"

ssh ju-ichi-master.local.nutius.com "ssh-keyscan -H ju-ichi-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh ju-ichi-master.local.nutius.com "ssh-keyscan -H ju-ni-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh ju-ichi-master.local.nutius.com "ssh-keyscan -H ju-ichi-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh ju-ichi-master.local.nutius.com "ssh-keyscan -H ju-ni-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh ju-ichi-master.local.nutius.com "ssh-keyscan -H ju-san-infra-node.local.nutius.com >> /root/.ssh/known_hosts"

#
ssh ju-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ju-ichi-node.local.nutius.com"
ssh ju-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ju-ni-node.local.nutius.com"
ssh ju-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ju-ichi-infra-node.local.nutius.com"
ssh ju-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ju-ni-infra-node.local.nutius.com"
ssh ju-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub ju-san-infra-node.local.nutius.com"
