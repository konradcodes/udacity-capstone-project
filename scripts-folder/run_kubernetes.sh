#!/usr/bin/env bash

#Uploads the image to docker hub and tags it

# Step 1:
dockerpath=konradcodes/udacity-dev-ops-capstone-project

# Run the Docker Hub container with kubernetes
kubectl run udacity-dev-ops-capstone-project --image=$dockerpath --port=80


# Listing kubernetes pods
kubectl get pods


# Forward the container port to a host
kubectl expose deployment udacity-dev-ops-capstone-project --type=LoadBalancer --port=80
