#!/bin/bash

VERSION=$1
PACKAGE_DIR=package/smr-k8s-ubuntu-$VERSION

# Build the package staging directory
mkdir -p $PACKAGE_DIR/DEBIAN
mkdir -p $PACKAGE_DIR/opt/smr/k8s

# Stage the files
cp DEBIAN/* $PACKAGE_DIR/DEBIAN/.
cp -rf smr-platform $PACKAGE_DIR/opt/smr/k8s

# Build the .deb package
dpkg-deb --build $PACKAGE_DIR
