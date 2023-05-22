#!/bin/bash

BASEDIR=$1
PREFIX=$2
TARGET=$3
NPROC=$4
ARCH=$6
DIR=$5

echo "Installing kernel headers"

cd $DIR

if [[ "$ARCH" != "x86_64" ]]
	then
		make headers_install ARCH=$ARCH INSTALL_HDR_PATH=$PREFIX
	else
		make headers_install INSTALL_HDR_PATH=$PREFIX
fi

if [ $? == 0 ]
	then
		echo "Kernel headers installed successfully!" && \
		exit 0
fi

exit 1
