#!/bin/sh
docker build -t bootstrap-ubuntu .
docker run -v $PWD:/bootstrap-ubuntu bootstrap-ubuntu 'sh -eux /bootstrap-ubuntu/bootstrap.sh'
