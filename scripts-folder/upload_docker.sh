#!/usr/bin/env bash

#Uploads the image to docker hub and tags it

# Create dockerpath
dockerpath=konradcodes/udacity-dev-ops-capstone-project-app


# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker image tag udacity-dev-ops-capstone-project $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
