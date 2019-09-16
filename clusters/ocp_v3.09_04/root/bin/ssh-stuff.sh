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
ssh-keyscan -H kyuuroku-ichi-master.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H kyuuroku-ichi-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H kyuuroku-ni-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H kyuuroku-ichi-infra-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H kyuuroku-ni-infra-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H kyuuroku-san-infra-node.local.nutius.com  >> /root/.ssh/known_hosts

#
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub kyuuroku-ichi-master.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub kyuuroku-ichi-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub kyuuroku-ni-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub kyuuroku-ichi-infra-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub kyuuroku-ni-infra-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub kyuuroku-san-infra-node.local.nutius.com

#
ssh kyuuroku-ichi-master.local.nutius.com "ssh-keygen -f /root/.ssh/id_rsa -N ''"

ssh kyuuroku-ichi-master.local.nutius.com "ssh-keyscan -H kyuuroku-ichi-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh kyuuroku-ichi-master.local.nutius.com "ssh-keyscan -H kyuuroku-ni-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh kyuuroku-ichi-master.local.nutius.com "ssh-keyscan -H kyuuroku-ichi-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh kyuuroku-ichi-master.local.nutius.com "ssh-keyscan -H kyuuroku-ni-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh kyuuroku-ichi-master.local.nutius.com "ssh-keyscan -H kyuuroku-san-infra-node.local.nutius.com >> /root/.ssh/known_hosts"

#
ssh kyuuroku-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub kyuuroku-ichi-node.local.nutius.com"
ssh kyuuroku-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub kyuuroku-ni-node.local.nutius.com"
ssh kyuuroku-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub kyuuroku-ichi-infra-node.local.nutius.com"
ssh kyuuroku-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub kyuuroku-ni-infra-node.local.nutius.com"
ssh kyuuroku-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub kyuuroku-san-infra-node.local.nutius.com"
