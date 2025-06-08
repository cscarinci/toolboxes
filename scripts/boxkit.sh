#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" | tee -a /etc/apk/repositories
apk update && apk upgrade
grep -v '^#' ./boxkit.packages | xargs apk add
