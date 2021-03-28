#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
 dockerpath="hazemabdelmagid/ml_project"

# Step 2:  
# Authenticate & tag
docker tag ml-app:latest $dockerpath:ml-app
#.my_password.txt file added to .gitignore file to execlude it from adding it to the repo.
cat .my_password.txt | docker login --username hazemabdelmagid --password-stdin

# Step 3:
# Push image to a docker repository
docker push $dockerpath:ml-app
