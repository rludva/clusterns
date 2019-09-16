#!/usr/bin/bash

####################
### OCP v3.9
####################
ROOT_DIRECTORY="/tmp/docs/ocp/v3.09"

# Getting Started
ADIR="/00 - Getting Started"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"


## Release Notes
wget --output-document="$DIRECTORY/releasenotes-html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/release_notes/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/release_notes/release-notes.pdf
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/epub/release_notes/release-notes.epub

## Getting Started - Getting Started with OpenShift Container Platform 3.9
wget --output-document="$DIRECTORY/getting_started.html" releasenotes-html https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/getting_started/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/epub/getting_started/getting-started.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/getting_started/getting-started.pdf

## Getting Started - Getting Started with OpenShift Container Platform 3.9
wget --output-document="$DIRECTORY/installation-and-configuration.html" installation-and-configuration-html https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/installation-and-configuration/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/installation_and_configuration/installation-and-configuration.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/installation_and_configuration/installation-and-configuration.pdf


# Administration & Configuration
ADIR="/01 - Administration & Configuration"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## Architecture - OpenShift Container Platform 3.9 Architecture Information
wget --output-document="$DIRECTORY/architecture.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/architecture/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/epub/architecture/architecture.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/architecture/architecture.pdf

## Cluster Administration - OpenShift Container Platform 3.9 Cluster Administration
wget --output-document="$DIRECTORY/cluster_administration.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/cluster_administration/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/epub/cluster_administration/cluster-administration.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/cluster_administration/cluster-administration.pdf

## Container Security Guide - OpenShift Container Platform 3.9 Container Security Guide
wget --output-document="$DIRECTORY/container_security_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/container_security_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/epub/container_security_guide/container-security-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/container_security_guide/container-security-guide.pdf

## Day Two Operations Guide - OpenShift Container Platform 3.9 Day Two Operations Guide
wget --output-document="$DIRECTORY/day_two_operations_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/day_two_operations_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/epub/day_two_operations_guide/day-two-operations-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/day_two_operations_guide/day-two-operations-guide.pdf

## Scaling and Performance Guide - OpenShift Container Platform 3.9 Scaling and Performance Guide
wget --output-document="$DIRECTORY/scaling_and_performance_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/scaling_and_performance_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/epub/scaling_and_performance_guide/scaling-and-performance-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/scaling_and_performance_guide/scaling-and-performance-guide.pdf

## Upgrading Clusters - OpenShift Container Platform 3.9 Upgrading Clusters
wget --output-document="$DIRECTORY/upgrading_clusters.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/upgrading_clusters/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/epub/upgrading_clusters/upgrading-clusters.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/upgrading_clusters/upgrading-clusters.pdf


# Development
ADIR="/02 - Development"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## Ansible Playbook Bundle Development Guide - Developing with Ansible Playbook Bundle (APB)
wget --output-document="$DIRECTORY/ansible_playbook_bundle_development_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/ansible_playbook_bundle_development_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/epub/ansible_playbook_bundle_development_guide/ansible-playbook-bundle-development-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/ansible_playbook_bundle_development_guide/ansible-playbook-bundle-development-guide.pdf

## Developer Guide - OpenShift Container Platform 3.9 Developer Reference
wget --output-document="$DIRECTORY/developer_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/developer_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/epub/developer_guide/developer-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/developer_guide/developer-guide.pdf

## Creating Images - OpenShift Container Platform 3.9 Image Creation Guide
wget --output-document="$DIRECTORY/creating_images.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/creating_images/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/epub/creating_images/creating-images.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/creating_images/creating-images.pdf

## Using Images - OpenShift Container Platform 3.9 Guide to Using Images
wget --output-document="$DIRECTORY/using_images.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/using_images/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/epub/using_images/using-images.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/using_images/using-images.pdf


# Reference
ADIR="/04 - Reference"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## CLI Reference - OpenShift Container Platform 3.9 CLI Reference
wget --output-document="$DIRECTORY/cli_reference.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/html-single/cli_reference/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/epub/cli_reference/cli-reference.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.9/pdf/cli_reference/cli-reference.pdf
