#!/bin/bash
#
# @author Alberto Dallolio <albydallo@gmail.com>
# @2018

[ -z "$BASE_NAME" ] && { echo "Missing environment. Please run first"; echo "source env.sh"; exit 1; }

VERSION=$1

[ -z "$VERSION" ] && { echo "Usage: $0 VERSION"; exit 1; }

echo Using...
echo Volume path:$VOL_CONTAINER_PATH \$VOL_CONTAINER_PATH
echo Base container:$BASE_CONTAINER \$BASE_CONTAINER
echo Base image:$BASE_NAME \$BASE_NAME
echo Version: $VERSION


CMD=bash

## Simple run
#docker run -it --name $BASE_NAME $BASE_CONTAINER:$VERSION $CMD

# Open XQuartz
open -a XQuartz

# Define inet address as environment variable
inet_ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')

# Add address to access control list
xhost + $inet_ip

docker run --rm -it -e DISPLAY=$inet_ip:0 --privileged --name $BASE_NAME $BASE_CONTAINER:$VERSION $CMD
