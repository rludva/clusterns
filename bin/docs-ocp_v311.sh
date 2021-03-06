#!/usr/bin/bash

####################
### OCP v3.11
####################
ROOT_DIRECTORY="/tmp/docs/ocp/v3.11"

# Getting Started
ADIR="/00 - Getting Started"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"


## Release Notes
wget --output-document="$DIRECTORY/releasenotes-html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/release_notes/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/release_notes/release-notes.pdf
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/release_notes/release-notes.epub

## Getting Started - Getting Started with OpenShift Container Platform 3.11
wget --output-document="$DIRECTORY/getting_started.html" releasenotes-html https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/getting_started/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/getting_started/getting-started.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/getting_started/getting-started.pdf


# Administration & Configuration
ADIR="/01 - Administration & Configuration"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## Architecture - OpenShift Container Platform 3.11 Architecture Information
wget --output-document="$DIRECTORY/architecture.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/architecture/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/architecture/architecture.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/architecture/architecture.pdf

## Cluster Administration - OpenShift Container Platform 3.11 Cluster Administration
wget --output-document="$DIRECTORY/cluster_administration.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/cluster_administration/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/cluster_administration/cluster-administration.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/cluster_administration/cluster-administration.pdf

## Configuring Clusters - OpenShift Container Platform 3.11 Installation and Configuration
wget --output-document="$DIRECTORY/configuring_clusters.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/configuring_clusters/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/configuring_clusters/configuring-clusters.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/configuring_clusters/configuring-clusters.pdf

## Container Security Guide - OpenShift Container Platform 3.11 Container Security Guide
wget --output-document="$DIRECTORY/container_security_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/container_security_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/container_security_guide/container-security-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/container_security_guide/container-security-guide.pdf

## Day Two Operations Guide - OpenShift Container Platform 3.11 Day Two Operations Guide
wget --output-document="$DIRECTORY/day_two_operations_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/day_two_operations_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/day_two_operations_guide/day-two-operations-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/day_two_operations_guide/day-two-operations-guide.pdf

## Installing Clusters - OpenShift Container Platform 3.11 Installing Clusters
wget --output-document="$DIRECTORY/installing_clusters.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/installing_clusters/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/installing_clusters/installing-clusters.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/installing_clusters/installing-clusters.pdf

## Scaling and Performance Guide - OpenShift Container Platform 3.11 Scaling and Performance Guide
wget --output-document="$DIRECTORY/scaling_and_performance_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/scaling_and_performance_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/scaling_and_performance_guide/scaling-and-performance-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/scaling_and_performance_guide/scaling-and-performance-guide.pdf

## Upgrading Clusters - OpenShift Container Platform 3.11 Upgrading Clusters
wget --output-document="$DIRECTORY/upgrading_clusters.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/upgrading_clusters/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/upgrading_clusters/upgrading-clusters.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/upgrading_clusters/upgrading-clusters.pdf


# Development
ADIR="/02 - Development"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## Ansible Playbook Bundle Development Guide - Developing with Ansible Playbook Bundle (APB)
wget --output-document="$DIRECTORY/ansible_playbook_bundle_development_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/ansible_playbook_bundle_development_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/ansible_playbook_bundle_development_guide/ansible-playbook-bundle-development-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/ansible_playbook_bundle_development_guide/ansible-playbook-bundle-development-guide.pdf

## Developer Guide - OpenShift Container Platform 3.11 Developer Reference
wget --output-document="$DIRECTORY/developer_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/developer_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/developer_guide/developer-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/developer_guide/developer-guide.pdf

## Creating Images - OpenShift Container Platform 3.11 Image Creation Guide
wget --output-document="$DIRECTORY/creating_images.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/creating_images/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/creating_images/creating-images.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/creating_images/creating-images.pdf

## Using Images - OpenShift Container Platform 3.11 Guide to Using Images
wget --output-document="$DIRECTORY/using_images.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/using_images/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/using_images/using-images.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/using_images/using-images.pdf


# Integration
ADIR="/03 - Integration"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## Service Mesh Release Notes - OpenShift Container Platform 3.11 Service Mesh Release Notes
wget --output-document="$DIRECTORY/service_mesh_release_notes.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/service_mesh_release_notes/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/service_mesh_release_notes/service-mesh-release-notes.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/service_mesh_release_notes/service-mesh-release-notes.pdf

## Service Mesh Install - OpenShift Container Platform 3.11 Service Mesh Installation Guide
wget --output-document="$DIRECTORY/service_mesh_install.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/service_mesh_install/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/service_mesh_install/service-mesh-install.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/service_mesh_install/service-mesh-install.pdf


# Reference
ADIR="/04 - Reference"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## CLI Reference - OpenShift Container Platform 3.11 CLI Reference
wget --output-document="$DIRECTORY/cli_reference.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/html-single/cli_reference/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/epub/cli_reference/cli-reference.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.11/pdf/cli_reference/cli-reference.pdf
