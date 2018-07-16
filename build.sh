#!/bin/bash
#
# @author Alberto Dallolio <albydallo@gmail.com>
# @2018 
    
echo Building $BASE_CONTAINER:$VERSION...

docker build -t $BASE_CONTAINER:$VERSION .
