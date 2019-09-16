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
ssh-keyscan -H juichigo-ichi-master.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H juichigo-ichi-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H juichigo-ni-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H juichigo-ichi-infra-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H juichigo-ni-infra-node.local.nutius.com  >> /root/.ssh/known_hosts

#
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichigo-ichi-master.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichigo-ichi-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichigo-ni-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichigo-ichi-infra-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichigo-ni-infra-node.local.nutius.com

#
ssh juichigo-ichi-master.local.nutius.com "ssh-keygen -f /root/.ssh/id_rsa -N ''"

ssh juichigo-ichi-master.local.nutius.com "ssh-keyscan -H juichigo-ichi-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh juichigo-ichi-master.local.nutius.com "ssh-keyscan -H juichigo-ni-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh juichigo-ichi-master.local.nutius.com "ssh-keyscan -H juichigo-ichi-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh juichigo-ichi-master.local.nutius.com "ssh-keyscan -H juichigo-ni-infra-node.local.nutius.com >> /root/.ssh/known_hosts"

#
ssh juichigo-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichigo-ichi-node.local.nutius.com"
ssh juichigo-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichigo-ni-node.local.nutius.com"
ssh juichigo-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichigo-ichi-infra-node.local.nutius.com"
ssh juichigo-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichigo-ni-infra-node.local.nutius.com"
