#!/bin/bash

# The URL of the repo. Do not change unless you're sure about this.
dev=ianmgg/php74:dev
latest=ianmgg/php74:latest

echo "Building production image"
docker build -f Dockerfile . -t $latest
docker push $latest

echo "Building development image"
docker build -f Dockerfile.dev . -t $dev
docker push $dev
