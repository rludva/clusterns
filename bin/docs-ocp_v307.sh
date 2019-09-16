#!/usr/bin/bash

####################
### OCP v3.7
####################
ROOT_DIRECTORY="/tmp/docs/ocp/v3.07"

# Getting Started
ADIR="/00 - Getting Started"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## Release Notes
wget --output-document="$DIRECTORY/release-notes.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/release_notes/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/release_notes/release-notes.pdf
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/release_notes/release-notes.epub

## Getting Started - Getting Started with OpenShift Container Platform 3.7
wget --output-document="$DIRECTORY/getting_started.html" releasenotes-html https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/getting_started/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/getting_started/getting-started.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/getting_started/getting-started.pdf

## Getting Started - Getting Started with OpenShift Container Platform 3.7
wget --output-document="$DIRECTORY/installation-and-configuration.html" installation-and-configuration-html https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/installation-and-configuration/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/installation_and_configuration/installation-and-configuration.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/installation_and_configuration/installation-and-configuration.pdf


# Administration & Configuration
ADIR="/01 - Administration & Configuration"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## Architecture - OpenShift Container Platform 3.7 Architecture Information
wget --output-document="$DIRECTORY/architecture.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/architecture/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/architecture/architecture.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/architecture/architecture.pdf

## Administrator Solutions - OpenShift Container Platform 3.7 Administrator Solutions 
wget --output-document="$DIRECTORY/administrator_solutions.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/administrator_solutions/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/administrator_solutions/administrator-solutions.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/administrator_solutions/administrator-solutions.pdf

## Cluster Administration - OpenShift Container Platform 3.7 Cluster Administration
wget --output-document="$DIRECTORY/cluster_administration.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/cluster_administration/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/cluster_administration/cluster-administration.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/cluster_administration/cluster-administration.pdf

## Container Security Guide - OpenShift Container Platform 3.7 Container Security Guide
wget --output-document="$DIRECTORY/container_security_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/container_security_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/container_security_guide/container-security-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/container_security_guide/container-security-guide.pdf

## Scaling and Performance Guide - OpenShift Container Platform 3.7 Scaling and Performance Guide
wget --output-document="$DIRECTORY/scaling_and_performance_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/scaling_and_performance_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/scaling_and_performance_guide/scaling-and-performance-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/scaling_and_performance_guide/scaling-and-performance-guide.pdf

## Day Two Operations Guide - OpenShift Container Platform 3.7 Day Two Operations Guide
wget --output-document="$DIRECTORY/day_two_operations_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/day_two_operations_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/day_two_operations_guide/day-two-operations-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/day_two_operations_guide/day-two-operations-guide.pdf

## Upgrading Clusters - OpenShift Container Platform 3.7 Upgrading Clusters
wget --output-document="$DIRECTORY/upgrading_clusters.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/upgrading_clusters/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/upgrading_clusters/upgrading-clusters.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/upgrading_clusters/upgrading-clusters.pdf


# Development
ADIR="/02 - Development"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## Ansible Playbook Bundle Development Guide - Developing with Ansible Playbook Bundle (APB)
wget --output-document="$DIRECTORY/ansible_playbook_bundle_development_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/ansible_playbook_bundle_development_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/ansible_playbook_bundle_development_guide/ansible-playbook-bundle-development-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/ansible_playbook_bundle_development_guide/ansible-playbook-bundle-development-guide.pdf

## Developer Guide - OpenShift Container Platform 3.7 Developer Reference
wget --output-document="$DIRECTORY/developer_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/developer_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/developer_guide/developer-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/developer_guide/developer-guide.pdf

## Creating Images - OpenShift Container Platform 3.7 Image Creation Guide
wget --output-document="$DIRECTORY/creating_images.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/creating_images/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/creating_images/creating-images.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/creating_images/creating-images.pdf

## Using Images - OpenShift Container Platform 3.7 Guide to Using Images
wget --output-document="$DIRECTORY/using_images.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/using_images/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/using_images/using-images.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/using_images/using-images.pdf


# Reference
ADIR="/04 - Reference"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## CLI Reference - OpenShift Container Platform 3.7 CLI Reference
wget --output-document="$DIRECTORY/cli_reference.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/html-single/cli_reference/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/epub/cli_reference/cli-reference.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.7/pdf/cli_reference/cli-reference.pdf


# Integration
ADIR="/05 - Integration"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## Integration - Deploying Container-Native Storage for OpenShift Container Platform 3.6
wget --output-document="$DIRECTORY/container-native_storage_for_openshift_container_platform.html" https://access.redhat.com/documentation/en-us/red_hat_gluster_storage/3.3/html-single/container-native_storage_for_openshift_container_platform/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/red_hat_gluster_storage/3.3/pdf/container-native_storage_for_openshift_container_platform/container-native-storage-for-openshift-container-platform.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/red_hat_gluster_storage/3.3/pdf/container-native_storage_for_openshift_container_platform/container-native-storage-for-openshift-container-platform.pdf
