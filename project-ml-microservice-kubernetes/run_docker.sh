#!/usr/bin/env bash

# Build image and add a descriptive tag
docker build -t boston-housing-prediction-app .
 
# List docker images
docker images

# Run flask app
docker run -p 8000:80 --name boston-housing boston-housing-prediction-app
