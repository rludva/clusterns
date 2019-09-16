#!/bin/bash

# Initial domain for new virtual machines..
CVM_DOMAIN="example.com"

# If the system is RHEL here is activation key..
CVM_ORGANIZATION="$ORGANIZATION"
CVM_ACTIVATION_KEY="$ACTIVATION_KEY"

# What machines to create?
# Separate by space, for example "master node1 node2 etcd1"
CVM_MACHINES="fedora28"

# Parameters of machines..
CVM_MACHINE_VCPU="2"
CVM_MACHINE_RAM="2048"
CVM_MACHINE_OS_TYPE="linux"
CVM_MACHINE_OS_VARIANT="fedora28"
CVM_MACHINE_STORAGE_SIZE="25"
CVM_MACHINE_ISO="/var/lib/libvirt/images/iso/rhel.iso"
#
# In the /var/lib/libvirt/images/iso are iso images of rhel, fedora and other
# systems, but rhel.iso, fedora.iso are symbolic link to current version of
# these images..
#
# ln -s rhel-server-7.5-x86_64-dvd.iso rhel.iso
# ln -s Fedora-Workstation-Live-x86_64-28-1.1.iso fedora.iso
#

# Description is shared for all machines of cluster..
CVM_DESCRIPTION="Simple Fedora virtual machine."

# Kickstart file is located in the bin directory..
CVM_KS_FILE="~/bin/ks_fedora.cfg"
#
# All machines of the cluster has the same ks file now..
#

#
# Yes, it is not the right direcotry for configuration file, but
# you can improve it in the future..
#


# If the machine exists, then stop and undefine..


# Execute the instalation process..
cvm "$CVM_MACHINES"
