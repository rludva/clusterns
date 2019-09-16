#!/bin/bash

# Get working directory of this script..
MY_PATH=`dirname "$0"`
MY_PATH=`( cd "$MY_PATH" && pwd )`

# Initial domain for new virtual machines..
CVM_DOMAIN="example.com"

# If the system is RHEL here is activation key..
CVM_ORGANIZATION="$ORGANIZATION"
CVM_ACTIVATION_KEY="$ACTIVATION_KEY"

# What machines to create?
# Separate by space, for example "master node1 node2 etcd1"
CVM_MACHINES="gluster-a gluster-b gluster-c"

# Vytvoř lokální soubor se seznamem virtuálních strojů clusteru..
rm $HOME/.machines
for machine in $CVM_MACHINES
do
  echo $machine.$CVM_DOMAIN >> $HOME/.machines
done

#
OS_VARIANT="rhel7.6"

# Parameters of machines..
CVM_GLUSTER_MACHINE_VCPU="2"
CVM_GLUSTER_MACHINE_RAM="6000"
CVM_GLUSTER_MACHINE_OS_TYPE="linux"
CVM_GLUSTER_MACHINE_OS_VARIANT="$OS_VARIANT"
CVM_GLUSTER_MACHINE_STORAGE_SIZE="40"
CVM_GLUSTER_MACHINE_ISO="/var/lib/libvirt/images/iso/gluster.iso"
#
# In the /var/lib/libvirt/images/iso are iso images of rhel, fedora and other
# systems, but rhel.iso, fedora.iso are symbolic link to current version of
# these images..
#
# ln -s rhel-server-7.5-x86_64-dvd.iso rhel.iso
# ln -s Fedora-Workstation-Live-x86_64-28-1.1.iso fedora.iso
#

# Description is shared for all machines of cluster..
CVM_DESCRIPTION="Gluster Storage 01 (shodan)"

# Kickstart file is located in the bin directory..
CVM_KS_FILE="$MY_PATH/ks_gluster.cfg"
CVM_KS_POST="$MY_PATH/ks_gluster_post_shodan.sh"

# Execute the instalation process..
. vm "$CVM_MACHINES"

# Pokud budu chtít lokální počítač ze kterého se instalace pouští mít připraven
# k ssh connection, tak musím smazat záznamy z known_hosts a přidat tam nové
# pomocí:
#
# New virtual machine has another finger-print..
#sed -i -e "/$MACHINE/g" $HOME/.ssh/known_hosts
#ssh-keyscan -H $MACHINE >> $HOME/.ssh/known_hosts
