#!/usr/bin/env bash

#Uploads the image to docker hub and tags it

# Create dockerpath
dockerpath=konradcodes/udacity-DevOps-capstone-project-app


# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker image tag udacity-DevOps-capstone-project $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
