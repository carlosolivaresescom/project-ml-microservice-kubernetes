#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="user/udacityproject"

# Step 2:  
# Authenticate & tag
cat ~/password.txt | docker login --username foo --password-stdin && \
    docker tag udacityproject $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
echo "initiating push"
docker image push $dockerpath

echo "finish push"
