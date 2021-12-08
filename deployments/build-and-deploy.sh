#!/bin/bash

# Start minikube
minikube start --kubernetes-version=v1.22.2 --cpus 2 --memory 2048

# Append DNS entry
HOST_ENTRY=HOST_ENTRY="${minikube ip} local.ecosia.org"
echo "Adding the host entry in the file /etc/hosts $HOST_ENTRY"

echo $(minikube ip) local.ecosia.org >> /etc/hosts

sudo sed -zi '/$HOST_ENTRY/!s/$/\n$HOST_ENTRY/' /etc/hosts

# Enable ingress on minikube
minikube addons enable ingress

# Deploy the Deployment
kubectl apply -f app-service.yaml

# Deploy the Service
kubectl apply -f app-deployment.yaml

# Deploy the Ingress Controller Resources
kubectl apply -f ingress_resources.yaml

# Deploy the Ingress
kubectl apply -f ingress.yaml


