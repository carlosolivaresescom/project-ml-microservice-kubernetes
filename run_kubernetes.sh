#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="user/udacityproject"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacityproject --image=$dockerpath:latest --port=80
kubectl wait --for=condition=Ready pod/udacityproject

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacityproject 80:80

read