#!/bin/bash

set -xe

if [ "$CCTOOLS_VERSION" == "" ] ; then
  echo Environment variable CCTOOLS_VERSION must be set
  exit 1
fi

if [ -f "/etc/redhat-release" ]; then
    wget -O /tmp/cctools.tar.gz "https://github.com/cooperative-computing-lab/cctools/releases/download/release/$CCTOOLS_VERSION/cctools-$CCTOOLS_VERSION-x86_64-centos8.tar.gz"
else    
    wget -O /tmp/cctools.tar.gz "https://github.com/cooperative-computing-lab/cctools/releases/download/release/$CCTOOLS_VERSION/cctools-$CCTOOLS_VERSION-x86_64-ubuntu20.04.tar.gz"
fi
mkdir -p /tmp/cctools
tar -C /tmp/cctools -zxvf /tmp/cctools.tar.gz --strip-components=1
