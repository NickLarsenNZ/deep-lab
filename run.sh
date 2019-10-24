#!/usr/bin/env sh

PORT=${PORT:-8999}
NOTEBOOKS=${NOTEBOOKS:-"$HOME/notebooks"}

# make the directory if it doesn't exist
mkdir -p $NOTEBOOKS

docker run --rm -v $NOTEBOOKS:/data:rw -p ${PORT}:8080 -e EXTERNAL_PORT=${PORT} pflashgary/deep-lab:latest
