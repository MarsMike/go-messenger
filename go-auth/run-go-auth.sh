#!/bin/sh
mkdir -p /tmp/log
ln -s /tmp/log /dev/log
/bin/go-auth $@
