#!/usr/bin/env bash

image=$1 &&
architecture=$2 &&

if [ -z "$architecture" ]; then
  docker push "sycamore864/ikosu-backend-locations-${image}" --all-tags
else
  docker push "sycamore864/ikosu-backend-locations-${image}:${architecture}"
fi
