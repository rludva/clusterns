#!/usr/bin/bash

####################
### OCP v3.6
####################
ROOT_DIRECTORY="/tmp/docs/ocp/v3.06"

# Getting Started
ADIR="/00 - Getting Started"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## Release Notes
wget --output-document="$DIRECTORY/releasenotes-notes.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/html-single/release_notes/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/pdf/release_notes/release-notes.pdf
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/epub/release_notes/release-notes.epub

## Getting Started - Getting Started with OpenShift Container Platform 3.6
wget --output-document="$DIRECTORY/getting_started.html" releasenotes-html https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/html-single/getting_started/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/epub/getting_started/getting-started.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/pdf/getting_started/getting-started.pdf


# Administration & Configuration
ADIR="/01 - Administration & Configuration"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## Architecture - OpenShift Container Platform 3.6 Architecture Information
wget --output-document="$DIRECTORY/architecture.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/html-single/architecture/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/epub/architecture/architecture.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/pdf/architecture/architecture.pdf

## Administrator Solutions - OpenShift Container Platform 3.6 Administrator Solutions 
wget --output-document="$DIRECTORY/administrator_solutions.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/html-single/administrator_solutions/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/epub/administrator_solutions/administrator-solutions.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/pdf/administrator_solutions/administrator-solutions.pdf

## Cluster Administration - OpenShift Container Platform 3.6 Cluster Administration
wget --output-document="$DIRECTORY/cluster_administration.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/html-single/cluster_administration/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/epub/cluster_administration/cluster-administration.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/pdf/cluster_administration/cluster-administration.pdf

## Installation and Configuration  - OpenShift Container Platform 3.6 Installation and Configuration
wget --output-document="$DIRECTORY/installation_and_configuration.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/html-single/scaling_and_performance_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/epub/installation_and_configuration.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/pdf/installation_and_configuration.pdf

## Scaling and Performance Guide - OpenShift Container Platform 3.6 Scaling and Performance Guide
wget --output-document="$DIRECTORY/scaling_and_performance_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/html-single/scaling_and_performance_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/epub/scaling_and_performance_guide/scaling-and-performance-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/pdf/scaling_and_performance_guide/scaling-and-performance-guide.pdf

## Container Security Guide - OpenShift Container Platform 3.6 Container Security Guide
wget --output-document="$DIRECTORY/container_security_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/html-single/container_security_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/epub/container_security_guide/container-security-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/pdf/container_security_guide/container-security-guide.pdf



# Development
ADIR="/02 - Development"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## Creating Images - OpenShift Container Platform 3.6 Image Creation Guide
wget --output-document="$DIRECTORY/creating_images.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/html-single/creating_images/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/epub/creating_images/creating-images.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/pdf/creating_images/creating-images.pdf

## Developer Guide - OpenShift Container Platform 3.6 Developer Reference
wget --output-document="$DIRECTORY/developer_guide.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/html-single/developer_guide/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/epub/developer_guide/developer-guide.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/pdf/developer_guide/developer-guide.pdf

## Using Images - OpenShift Container Platform 3.6 Guide to Using Images
wget --output-document="$DIRECTORY/using_images.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/html-single/using_images/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/epub/using_images/using-images.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/pdf/using_images/using-images.pdf


# Reference
ADIR="/04 - Reference"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## CLI Reference - OpenShift Container Platform 3.6 CLI Reference
wget --output-document="$DIRECTORY/cli_reference.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/html-single/cli_reference/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/epub/cli_reference/cli-reference.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/pdf/cli_reference/cli-reference.pdf

## REST API Reference  - OpenShift Container Platform 3.6 REST API for Developers
wget --output-document="$DIRECTORY/rest_api_reference.html" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/html-single/cli_reference/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/epub/cli_reference/rest_api_reference.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/openshift_container_platform/3.6/pdf/cli_reference/rest_api_reference.pdf


# Integration
ADIR="/05 - Integration"
DIRECTORY="$ROOT_DIRECTORY$ADIR"
mkdir -p "$DIRECTORY"

## Container-Native Storage for OpenShift Container Platform  - Deploying Container-Native Storage for OpenShift Container Platform 3.6
wget --output-document="$DIRECTORY/container-native_storage_for_openshift_container_platform.html" https://access.redhat.com/documentation/en-us/red_hat_gluster_storage/3.3/html-single/container-native_storage_for_openshift_container_platform/
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/red_hat_gluster_storage/3.3/pdf/container-native_storage_for_openshift_container_platform/container-native-storage-for-openshift-container-platform.epub
wget --directory-prefix="$DIRECTORY" https://access.redhat.com/documentation/en-us/red_hat_gluster_storage/3.3/pdf/container-native_storage_for_openshift_container_platform/container-native-storage-for-openshift-container-platform.pdf
