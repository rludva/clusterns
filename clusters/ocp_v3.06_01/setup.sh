#!/bin/bash

#
CLUSTER_NAME="ocp_v3.06_01"
CLUSTER_ALIAS="roku"

# Description is shared for all machines of cluster..
CVM_DESCRIPTION="RHEL (OCP v3.6) 01 ($CLUSTER_ALIAS)"

#
MY_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Initial machines and domain for new cluster..
CVM_MACHINES="$($MY_PATH/../../bin/cluster $CLUSTER_NAME ls-machine)"
CVM_DOMAIN="local.nutius.com"

# Check mandatory environment variables..
. $MY_PATH/../../bin/env_check

# If the system is RHEL here is activation key..
CVM_ORGANIZATION="$ORGANIZATION"
CVM_ACTIVATION_KEY="$ACTIVATION_KEY"
CVM_POOLID="$POOLID"

#
OS_VARIANT="rhel7.6"

# Parameters of machines for nodes..
CVM_WORKSTATION_MACHINE_VCPU="2"
CVM_WORKSTATION_MACHINE_RAM="6000"
CVM_WORKSTATION_MACHINE_OS_TYPE="linux"
CVM_WORKSTATION_MACHINE_OS_VARIANT="$OS_VARIANT"
CVM_WORKSTATION_MACHINE_STORAGE_SIZE="15"
CVM_WORKSTATION_MACHINE_ISO="/var/lib/libvirt/images/iso/rhel.iso"

# Parameters of machines for masters..
CVM_MASTER_MACHINE_VCPU="2"
CVM_MASTER_MACHINE_RAM="6000"
CVM_MASTER_MACHINE_OS_TYPE="linux"
CVM_MASTER_MACHINE_OS_VARIANT="$OS_VARIANT"
CVM_MASTER_MACHINE_STORAGE_SIZE="30"
CVM_MASTER_MACHINE_ISO="/var/lib/libvirt/images/iso/rhel.iso"

# Parameters of machines for nodes..
CVM_NODE_MACHINE_VCPU="2"
CVM_NODE_MACHINE_RAM="6000"
CVM_NODE_MACHINE_OS_TYPE="linux"
CVM_NODE_MACHINE_OS_VARIANT="$OS_VARIANT"
CVM_NODE_MACHINE_STORAGE_SIZE="30"
CVM_NODE_MACHINE_ISO="/var/lib/libvirt/images/iso/rhel.iso"

# Kickstart file is located in the bin directory..
CVM_KS_FILE="$MY_PATH/anaconda-ks.cfg"
CVM_KS_POST="$MY_PATH/anaconda-ks_post.sh"

# Execute the instalation process..
. $MY_PATH/../../bin/cvm
