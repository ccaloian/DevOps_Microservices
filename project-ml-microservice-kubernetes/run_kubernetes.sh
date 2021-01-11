#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath="ccaloian/boston-housing"

# Run the Docker Hub container with kubernetes
kubectl run bostonhousing \
    --image=$dockerpath \
    --port=80 \
    --labels app=bostonhousing

# wait 60s for the pod to be ready before forwarding
sleep 60

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward bostonhousing 8000:80
