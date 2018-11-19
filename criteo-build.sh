#!/bin/sh -xe

ROOT=$(pwd)
DOCKER_ARGS="run --env -i --rm -v ${ROOT}:/mnt/corefx -w /mnt/corefx  microsoft/dotnet-buildtools-prereqs:centos-7-b46d863-20180719033416"
docker ${DOCKER_ARGS}  /mnt/corefx/build.sh -release -BuildTests=False
