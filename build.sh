#!/bin/sh

docker buildx build --push --platform linux/amd64,linux/arm64 -t kirillplatonov/solr-sunspot:latest .
