#!/bin/bash

set -e

echo "Applying ConfigMap..."
kubectl apply -f ../k8s/redis-configmap.yaml

echo "Applying Secret..."
kubectl apply -f ../k8s/redis-secret.yaml

echo "Applying PersistentVolumeClaim..."
kubectl apply -f ../k8s/redis-pvc.yaml

echo "Deploying Redis..."
kubectl apply -f ../k8s/redis-deployment.yaml

echo "Creating Redis Service..."
kubectl apply -f ../k8s/redis-service.yaml

echo "Deploying FastAPI..."
kubectl apply -f ../k8s/deployment.yaml

echo "Creating FastAPI Service..."
kubectl apply -f ../k8s/service.yaml

echo "Creating Ingress..."
kubectl apply -f ../k8s/ingress.yaml

echo
echo "Deployment complete."
