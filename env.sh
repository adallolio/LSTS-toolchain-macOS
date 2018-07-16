#!/bin/bash
#
# @author Alberto Dallolio <albydallo@gmail.com>
# @2018 


export PREFIX=lsts-toolchain
export CONTAINER_NAME=lsts_env
export BASE_CONTAINER=$PREFIX/$CONTAINER_NAME
export BASE_NAME=$PREFIX-lsts_env
export VERSION=v0.1

echo Name:$CONTAINER_NAME \$CONTAINER_NAME
echo Container:$BASE_CONTAINER \$BASE_CONTAINER
echo Image:$BASE_NAME \$BASE_NAME
echo Version:$VERSION