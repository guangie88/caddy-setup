#!/usr/bin/env bash
BRANCH="1.0.0"
PLUGINS="filter,"

docker build \
    -f Dockerfile-no-stats \
    -t guangie88/caddy:${BRANCH}_filter \
    --build-arg plugins=${PLUGINS} \
    github.com/abiosoft/caddy-docker.git#${BRANCH}
