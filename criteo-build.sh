#!/bin/sh -xe

ROOT=$(pwd)
DOCKER_ARGS="run --env -i --rm -v ${ROOT}:/mnt/corefx -w /mnt/corefx  microsoft/dotnet-buildtools-prereqs:ubuntu-14.04-c103199-20180628134413"
docker ${DOCKER_ARGS}  /mnt/corefx/build.sh -release -BuildTests=False
