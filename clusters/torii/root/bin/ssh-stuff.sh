#!/bin/bash -

export PASSWORD="$SSHPASS"

rm /root/.ssh/known_hosts

#
ssh-keyscan -H torii-lb.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H torii-ichi-master.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H torii-ni-master.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H torii-san-master.local.nutius.com >> /root/.ssh/known_hosts
ssh-keyscan -H torii-ichi-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H torii-ichi-infra-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H torii-ni-infra-node.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H torii-san-infra-node.local.nutius.com  >> /root/.ssh/known_hosts

ssh-keyscan -H torii-ichi-gluster.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H torii-ni-gluster.local.nutius.com  >> /root/.ssh/known_hosts
ssh-keyscan -H torii-san-gluster.local.nutius.com  >> /root/.ssh/known_hosts

#
sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-lb.local.nutius.com
sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ichi-master.local.nutius.com
sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ni-master.local.nutius.com
sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-san-master.local.nutius.com
sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ichi-node.local.nutius.com
sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ichi-infra-node.local.nutius.com
sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ni-infra-node.local.nutius.com
sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-san-infra-node.local.nutius.com

sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ichi-gluster.local.nutius.com
sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ni-gluster.local.nutius.com
sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-san-gluster.local.nutius.com

# ICHI MASTER
ssh torii-ichi-master.local.nutius.com "if [ -e /root/.ssh/id_rsa ]; then rm /root/.ssh/id_rsa; fi"
ssh torii-ichi-master.local.nutius.com "if [ -e /root/.ssh/known_hosts ]; then rm /root/.ssh/known_hosts; fi"
ssh torii-ichi-master.local.nutius.com "ssh-keygen -f /root/.ssh/id_rsa -N ''"

ssh torii-ichi-master.local.nutius.com "ssh-keyscan -H torii-lb.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-ichi-master.local.nutius.com "ssh-keyscan -H torii-ni-master.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-ichi-master.local.nutius.com "ssh-keyscan -H torii-san-master.local.nutius.com >> /root/.ssh/known_hosts"

ssh torii-ichi-master.local.nutius.com "ssh-keyscan -H torii-ichi-node.local.nutius.com >> /root/.ssh/known_hosts"

ssh torii-ichi-master.local.nutius.com "ssh-keyscan -H torii-ichi-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-ichi-master.local.nutius.com "ssh-keyscan -H torii-ni-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-ichi-master.local.nutius.com "ssh-keyscan -H torii-san-infra-node.local.nutius.com >> /root/.ssh/known_hosts"

ssh torii-ichi-master.local.nutius.com "ssh-keyscan -H torii-ichi-gluster.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-ichi-master.local.nutius.com "ssh-keyscan -H torii-ni-gluster.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-ichi-master.local.nutius.com "ssh-keyscan -H torii-san-gluster.local.nutius.com >> /root/.ssh/known_hosts"

#
ssh torii-ichi-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ichi-node.local.nutius.com"
ssh torii-ichi-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ichi-infra-node.local.nutius.com"
ssh torii-ichi-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ni-infra-node.local.nutius.com"
ssh torii-ichi-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-san-infra-node.local.nutius.com"

ssh torii-ichi-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ichi-gluster.local.nutius.com"
ssh torii-ichi-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ni-gluster.local.nutius.com"
ssh torii-ichi-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-san-gluster.local.nutius.com"

# NI MASTER
ssh torii-ni-master.local.nutius.com "if [ -e /root/.ssh/id_rsa ]; then rm /root/.ssh/id_rsa; fi"
ssh torii-ni-master.local.nutius.com "if [ -e /root/.ssh/known_hosts ]; then rm /root/.ssh/known_hosts; fi"
ssh torii-ni-master.local.nutius.com "ssh-keygen -f /root/.ssh/id_rsa -N ''"

ssh torii-ni-master.local.nutius.com "ssh-keyscan -H torii-ichi-node.local.nutius.com >> /root/.ssh/known_hosts"

ssh torii-ni-master.local.nutius.com "ssh-keyscan -H torii-lb.local.nutius.com >> /root/.ssh/known_hosts"

ssh torii-ni-master.local.nutius.com "ssh-keyscan -H torii-ichi-master.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-ni-master.local.nutius.com "ssh-keyscan -H torii-san-master.local.nutius.com >> /root/.ssh/known_hosts"

ssh torii-ni-master.local.nutius.com "ssh-keyscan -H torii-ichi-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-ni-master.local.nutius.com "ssh-keyscan -H torii-ni-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-ni-master.local.nutius.com "ssh-keyscan -H torii-san-infra-node.local.nutius.com >> /root/.ssh/known_hosts"

ssh torii-ni-master.local.nutius.com "ssh-keyscan -H torii-ichi-gluster.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-ni-master.local.nutius.com "ssh-keyscan -H torii-ni-gluster.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-ni-master.local.nutius.com "ssh-keyscan -H torii-san-gluster.local.nutius.com >> /root/.ssh/known_hosts"

#
ssh torii-ni-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ichi-node.local.nutius.com"
ssh torii-ni-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ichi-infra-node.local.nutius.com"
ssh torii-ni-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ni-infra-node.local.nutius.com"
ssh torii-ni-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-san-infra-node.local.nutius.com"

ssh torii-ni-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ichi-gluster.local.nutius.com"
ssh torii-ni-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ni-gluster.local.nutius.com"
ssh torii-ni-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-san-gluster.local.nutius.com"

# SAN MASTER
ssh torii-san-master.local.nutius.com "if [ -e /root/.ssh/id_rsa ]; then rm /root/.ssh/id_rsa; fi"
ssh torii-san-master.local.nutius.com "if [ -e /root/.ssh/known_hosts ]; then rm /root/.ssh/known_hosts; fi"
ssh torii-san-master.local.nutius.com "ssh-keygen -f /root/.ssh/id_rsa -N ''"

ssh torii-san-master.local.nutius.com "ssh-keyscan -H torii-ichi-node.local.nutius.com >> /root/.ssh/known_hosts"

ssh torii-san-master.local.nutius.com "ssh-keyscan -H torii-lb.local.nutius.com >> /root/.ssh/known_hosts"

ssh torii-san-master.local.nutius.com "ssh-keyscan -H torii-ichi-master.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-san-master.local.nutius.com "ssh-keyscan -H torii-ni-master.local.nutius.com >> /root/.ssh/known_hosts"

ssh torii-san-master.local.nutius.com "ssh-keyscan -H torii-ichi-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-san-master.local.nutius.com "ssh-keyscan -H torii-ni-infra-node.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-san-master.local.nutius.com "ssh-keyscan -H torii-san-infra-node.local.nutius.com >> /root/.ssh/known_hosts"

ssh torii-san-master.local.nutius.com "ssh-keyscan -H torii-ichi-gluster.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-san-master.local.nutius.com "ssh-keyscan -H torii-ni-gluster.local.nutius.com >> /root/.ssh/known_hosts"
ssh torii-san-master.local.nutius.com "ssh-keyscan -H torii-san-gluster.local.nutius.com >> /root/.ssh/known_hosts"

#
ssh torii-san-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ichi-node.local.nutius.com"
ssh torii-san-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ichi-infra-node.local.nutius.com"
ssh torii-san-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ni-infra-node.local.nutius.com"
ssh torii-san-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-san-infra-node.local.nutius.com"

ssh torii-san-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ichi-gluster.local.nutius.com"
ssh torii-san-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-ni-gluster.local.nutius.com"
ssh torii-san-master.local.nutius.com "sshpass -p $PASSWORD ssh-copy-id -i /root/.ssh/id_rsa.pub torii-san-gluster.local.nutius.com"
