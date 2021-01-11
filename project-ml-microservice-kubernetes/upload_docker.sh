#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath="ccaloian/boston-housing"
  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag boston-housing-prediction-app $dockerpath

# Push image to a docker repository
docker push $dockerpath
