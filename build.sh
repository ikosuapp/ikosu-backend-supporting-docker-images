#!/usr/bin/env bash

image=$1 &&
architecture=$2 &&

if [ -z "$architecture" ]; then
  docker run --rm -v "$(pwd)":/workdir -v /var/run/docker.sock:/var/run/docker.sock --entrypoint ./bin/create-image sycamore864/ikosu-backend-locations-build:latest "${image}"
else
  docker run --rm -v "$(pwd)":/workdir -v /var/run/docker.sock:/var/run/docker.sock --entrypoint ./bin/create-image "sycamore864/ikosu-backend-locations-build:${architecture}" "${image}" "${architecture}"
fi
