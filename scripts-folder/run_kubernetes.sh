#!/usr/bin/env bash

#Uploads the image to docker hub and tags it

# Step 1:
dockerpath=konradcodes/udacity-dev-ops-capstone-project

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run capstone-app --image=$dockerpath --port=80


# Step 3:
# Listing kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
kubectl expose deployment udacity-dev-ops-capstone-project --type=LoadBalancer --port=80
