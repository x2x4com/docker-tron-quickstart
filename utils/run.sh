#!/usr/bin/env bash

docker rm -f tron

docker run -it \
  --rm \
  -p 8090:8090 \
  -p 8091:8091 \
  -p 8092:8092 \
  -p 9090:9090 \
  -e "defaultBalance=100000" \
  -e "showQueryString=true" \
  -e "showBody=true" \
  -e "formatJson=true" \
  --name tron \
  tron-quickstart
