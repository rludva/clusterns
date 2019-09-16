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
ssh-keyscan -H juichiroku-ichi-master.example.com >> /root/.ssh/known_hosts
ssh-keyscan -H juichiroku-ni-master.example.com >> /root/.ssh/known_hosts
ssh-keyscan -H juichiroku-san-master.example.com >> /root/.ssh/known_hosts
ssh-keyscan -H juichiroku-ichi-node.example.com  >> /root/.ssh/known_hosts
ssh-keyscan -H juichiroku-ni-node.example.com  >> /root/.ssh/known_hosts
ssh-keyscan -H juichiroku-ichi-infra-node.example.com  >> /root/.ssh/known_hosts
ssh-keyscan -H juichiroku-ni-infra-node.example.com  >> /root/.ssh/known_hosts

#
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ichi-master.example.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ni-master.example.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-san-master.example.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ichi-node.example.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ni-node.example.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ichi-infra-node.example.com
sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ni-infra-node.example.com

#
ssh juichiroku-ichi-master.example.com "ssh-keygen -f /root/.ssh/id_rsa -N ''"

ssh juichiroku-ichi-master.example.com "ssh-keyscan -H juichiroku-ni-master.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-ichi-master.example.com "ssh-keyscan -H juichiroku-san-master.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-ichi-master.example.com "ssh-keyscan -H juichiroku-ichi-node.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-ichi-master.example.com "ssh-keyscan -H juichiroku-ni-node.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-ichi-master.example.com "ssh-keyscan -H juichiroku-ichi-infra-node.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-ichi-master.example.com "ssh-keyscan -H juichiroku-ni-infra-node.example.com >> /root/.ssh/known_hosts"

#
ssh juichiroku-ichi-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ni-master.example.com"
ssh juichiroku-ichi-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-san-master.example.com"
ssh juichiroku-ichi-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ichi-node.example.com"
ssh juichiroku-ichi-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ni-node.example.com"
ssh juichiroku-ichi-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ichi-infra-node.example.com"
ssh juichiroku-ichi-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ni-infra-node.example.com"

#
ssh juichiroku-ni-master.example.com "ssh-keygen -f /root/.ssh/id_rsa -N ''"

ssh juichiroku-ni-master.example.com "ssh-keyscan -H juichiroku-ichi-master.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-ni-master.example.com "ssh-keyscan -H juichiroku-san-master.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-ni-master.example.com "ssh-keyscan -H juichiroku-ichi-node.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-ni-master.example.com "ssh-keyscan -H juichiroku-ni-node.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-ni-master.example.com "ssh-keyscan -H juichiroku-ichi-infra-node.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-ni-master.example.com "ssh-keyscan -H juichiroku-ni-infra-node.example.com >> /root/.ssh/known_hosts"

#
ssh juichiroku-ni-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ichi-master.example.com"
ssh juichiroku-ni-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-san-master.example.com"
ssh juichiroku-ni-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ichi-node.example.com"
ssh juichiroku-ni-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ni-node.example.com"
ssh juichiroku-ni-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ichi-infra-node.example.com"
ssh juichiroku-ni-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ni-infra-node.example.com"

#
ssh juichiroku-san-master.example.com "ssh-keygen -f /root/.ssh/id_rsa -N ''"

ssh juichiroku-san-master.example.com "ssh-keyscan -H juichiroku-ichi-master.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-san-master.example.com "ssh-keyscan -H juichiroku-ni-master.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-san-master.example.com "ssh-keyscan -H juichiroku-ichi-node.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-san-master.example.com "ssh-keyscan -H juichiroku-ni-node.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-san-master.example.com "ssh-keyscan -H juichiroku-ichi-infra-node.example.com >> /root/.ssh/known_hosts"
ssh juichiroku-san-master.example.com "ssh-keyscan -H juichiroku-ni-infra-node.example.com >> /root/.ssh/known_hosts"

#
ssh juichiroku-san-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ichi-master.example.com"
ssh juichiroku-san-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ni-master.example.com"
ssh juichiroku-san-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ichi-node.example.com"
ssh juichiroku-san-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ni-node.example.com"
ssh juichiroku-san-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ichi-infra-node.example.com"
ssh juichiroku-san-master.example.com "sshpass -e ssh-copy-id -i /root/.ssh/id_rsa.pub juichiroku-ni-infra-node.example.com"
