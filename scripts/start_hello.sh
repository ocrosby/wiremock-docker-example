#!/usr/bin/env zsh

docker run -it --rm \
  -p 8080:8080 \
  -v $PWD/wiremock-docker/samples/hello/stubs:/home/wiremock \
  wiremock/wiremock:latest
  