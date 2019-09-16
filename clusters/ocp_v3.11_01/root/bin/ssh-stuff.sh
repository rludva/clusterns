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
ssh-keyscan -H juichi-ichi-master.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H juichi-ichi-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H juichi-ni-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H juichi-ichi-infra-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H juichi-ni-infra-node.local.nutius.com  >> /root/.ssh/known_hosts

#
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichi-ichi-master.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichi-ichi-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichi-ni-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichi-ichi-infra-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichi-ni-infra-node.local.nutius.com

#
ssh juichi-ichi-master.local.nutius.com "ssh-keygen -f /root/.ssh/id_rsa -N ''"

ssh juichi-ichi-master.local.nutius.com "ssh-keyscan -H juichi-ichi-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh juichi-ichi-master.local.nutius.com "ssh-keyscan -H juichi-ni-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh juichi-ichi-master.local.nutius.com "ssh-keyscan -H juichi-ichi-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh juichi-ichi-master.local.nutius.com "ssh-keyscan -H juichi-ni-infra-node.local.nutius.com >> /root/.ssh/known_hosts"

#
ssh juichi-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichi-ichi-node.local.nutius.com"
ssh juichi-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichi-ni-node.local.nutius.com"
ssh juichi-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichi-ichi-infra-node.local.nutius.com"
ssh juichi-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichi-ni-infra-node.local.nutius.com"
