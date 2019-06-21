#!/bin/bash
ORG=dolmit
DOCKER_IMAGE=pelias-api

# Set these environment variables
#DOCKER_TAG=
#DOCKER_EMAIL=
#DOCKER_USER=
#DOCKER_AUTH=

# Build image
docker build --tag="$ORG/$DOCKER_IMAGE" .
docker login -u $DOCKER_USER -p $DOCKER_AUTH
docker push $ORG/$DOCKER_IMAGE
docker tag $ORG/$DOCKER_IMAGE $ORG/$DOCKER_IMAGE:latest
docker push $ORG/$DOCKER_IMAGE:latest
