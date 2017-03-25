#!/bin/sh
docker build -t testimage $(dirname $(readlink -f $0)) &&\
docker run -v $(dirname $(readlink -f $0)):/host testimage sh -c '/host/bootstrap.sh'
