#!/bin/bash

# store starting working directory
OLD_WD=$PWD

# determine working directory of shell script
WD=$(dirname "$(readlink -f "$0")")

cd $WD

# call docker build passing any other build options (command line options may override!)
docker build --network=host --file Dockerfile \
  -t scons-build-fedora30:latest -t scons-build-fedora30:0.0.1 "$@" .

cd $OLD_WD

