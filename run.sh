#!/bin/sh

docker run --name solr -d -p 8983:8983 -t kirillplatonov/solr-sunspot
