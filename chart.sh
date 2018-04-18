#!/usr/bin/env bash

set -e
set -x

source config.sh

mkdir -p chart

cp -rf stable/* chart/

cd chart

grep -rl '{{GIT_HOST}}' . | xargs sed -i '' "s/{{GIT_HOST}}/${GIT_HOST}/g"

grep -rl '{{REGISTRY}}' . | xargs sed -i '' "s/{{REGISTRY}}/${REGISTRY}/g"