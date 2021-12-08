#!/bin/bash

# Start minikube
minikube start --kubernetes-version=v1.22.2 --cpus 2 --memory 2048

# Append DNS entry
# HOST_ENTRY=HOST_ENTRY="${minikube ip} local.ecosia.org"
# echo "Adding the host entry in the file /etc/hosts $HOST_ENTRY"
# echo $(minikube ip) local.ecosia.org >> /etc/hosts
# sudo sed -zi '/$HOST_ENTRY/!s/$/\n$HOST_ENTRY/' /etc/hosts

# Enable ingress on minikube
minikube addons enable ingress


git clone https://github.com/hellodk/tree.git
cd tree
kubectl apply -f deployments/kubernetes



