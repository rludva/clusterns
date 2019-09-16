#!/bin/bash -

# Add admin user to the cluster
oadm policy add-cluster-role-to-user cluster-admin admin

# List all nodes..
oc get nodes
