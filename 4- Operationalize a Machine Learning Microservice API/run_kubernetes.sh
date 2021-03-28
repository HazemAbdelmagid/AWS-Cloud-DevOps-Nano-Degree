#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="hazemabdelmagid/ml_project"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment ml-app --image=$dockerpath:ml-app --port=80

# Step 3:
# List kubernetes pods
kubectl get deployment
kubectl get pods
kubectl get services

# Step 4:
# Forward the container port to a host
kubectl expose deployment ml-app --port=80 --target-port=80
kubectl port-forward deployment/ml-app 8000:80

