#!/bin/sh 
set -e 
docker run --rm -it \
    -v $PWD:/go/src/go-messenger/go-auth/ \
    -e SOURCE_PATH=go-messenger/go-auth/ \
    marsmike/go-builder:1.8

docker build -t marsmike/go-auth .
