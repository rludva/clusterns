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
ssh-keyscan -H juichisan-ichi-master.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H juichisan-ichi-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H juichisan-ni-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H juichisan-ichi-infra-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H juichisan-ni-infra-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H juichisan-san-infra-node.local.nutius.com  >> /root/.ssh/known_hosts

#
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichisan-ichi-master.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichisan-ichi-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichisan-ni-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichisan-ichi-infra-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichisan-ni-infra-node.local.nutius.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichisan-san-infra-node.local.nutius.com

#
ssh juichisan-ichi-master.local.nutius.com "ssh-keygen -f /root/.ssh/id_rsa -N ''"

ssh juichisan-ichi-master.local.nutius.com "ssh-keyscan -H juichisan-ichi-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh juichisan-ichi-master.local.nutius.com "ssh-keyscan -H juichisan-ni-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh juichisan-ichi-master.local.nutius.com "ssh-keyscan -H juichisan-ichi-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh juichisan-ichi-master.local.nutius.com "ssh-keyscan -H juichisan-ni-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh juichisan-ichi-master.local.nutius.com "ssh-keyscan -H juichisan-san-infra-node.local.nutius.com >> /root/.ssh/known_hosts"

#
ssh juichisan-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichisan-ichi-node.local.nutius.com"
ssh juichisan-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichisan-ni-node.local.nutius.com"
ssh juichisan-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichisan-ichi-infra-node.local.nutius.com"
ssh juichisan-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichisan-ni-infra-node.local.nutius.com"
ssh juichisan-ichi-master.local.nutius.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichisan-san-infra-node.local.nutius.com"
