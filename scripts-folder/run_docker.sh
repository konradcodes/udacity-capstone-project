#!/usr/bin/env bash

# Step 1:
# Build image and add a descriptive tag
docker build -t udacity-dev-ops-capstone-project .

# Step 2:
# Listing docker images
docker images

# Step 3:
# Run the application
docker run -p 80:80 udacity-dev-ops-capstone-project
