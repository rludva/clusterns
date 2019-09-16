#!/bin/bash

# Initial machines and domain for new cluster..
CLUSTER_NAME="elasticsearch"

#
MY_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

CVM_MACHINES="$($MY_PATH/../../bin/cluster $CLUSTER_NAME ls-machine)"
CVM_DOMAIN="example.com"

# Check mandatory environment variables..
. $MY_PATH/../../bin/env_check

# If the system is RHEL here is activation key..
CVM_ORGANIZATION="$ORGANIZATION"
CVM_ACTIVATION_KEY="$ACTIVATION_KEY"
CVM_POOLID="$POOLID"

# Parameters of machines for masters..
CVM_ELASTICSEARCH_MACHINE_VCPU="2"
CVM_ELASTICSEARCH_MACHINE_RAM="5000"
CVM_ELASTICSEARCH_MACHINE_OS_TYPE="linux"
CVM_ELASTICSEARCH_MACHINE_OS_VARIANT="rhel7"
CVM_ELASTICSEARCH_MACHINE_STORAGE_SIZE="30"
CVM_ELASTICSEARCH_MACHINE_ISO="/var/lib/libvirt/images/iso/rhel.iso"

# Description is shared for all machines of cluster..
CVM_DESCRIPTION="ElasticSearch Cluster 01 (shodan)"

# Get working directory of this script..
MY_PATH=`dirname "$0"`
MY_PATH=`( cd "$MY_PATH" && pwd )`

# Kickstart file is located in the bin directory..
CVM_KS_FILE="$MY_PATH/ks_elasticsearch.cfg"
CVM_KS_POST="$MY_PATH/ks_elasticsearch_post.sh"

# Execute the instalation process..
. $MY_PATH/../../bin/cvm
