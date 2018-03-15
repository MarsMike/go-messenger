#!/bin/bash
set -e

# Set directory to where we expect code to be
cd /go/src/${SOURCE_PATH}

echo "working directory:"
echo $PWD

echo "Downloading dependencies"
govendor sync

echo "Fix formatting"
go fmt ./...

echo "Running Tests"
go test ./... 

echo "Building source"
go build

echo "Fixing permission problem"
chown -R $HOST_UID:$HOST_GID /go/src/${SOURCE_PATH}

echo "Build Successful"
