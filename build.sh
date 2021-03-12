#!/usr/bin/env bash

dir=$(dirname $0)

set -ex

export DOCKER_BUILDKIT=1

docker pull pjcdawkins/platformsh-cli:latest

docker build --progress=plain -t axelerant/platformsh-cli:latest ${dir}/

docker push axelerant/platformsh-cli:latest
