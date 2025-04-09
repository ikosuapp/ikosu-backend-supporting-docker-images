#!/usr/bin/env bash

image=$1 &&

docker manifest create \
  "sycamore864/ikosu-backend-locations-${image}:latest" \
  --amend "sycamore864/ikosu-backend-locations-${image}:amd64" \
  --amend "sycamore864/ikosu-backend-locations-${image}:arm64" &&
docker manifest push "sycamore864/ikosu-backend-locations-${image}:latest"
