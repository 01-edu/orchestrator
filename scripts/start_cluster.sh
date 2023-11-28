#!/bin/bash

# Deploy secrets
kubectl apply -f ./manifests/billing-db-secrets.yaml
kubectl apply -f ./manifests/inventory-db-secrets.yaml
kubectl apply -f ./manifests/billing-queue-secrets.yaml

# Deploy DB and Rabbimq
kubectl apply -f ./manifests/billing-queue.yaml
kubectl apply -f ./manifests/billing-db.yaml
kubectl apply -f ./manifests/inventory-db.yaml

# Deploy apps
kubectl apply -f ./manifests/api-gateway-app.yaml
kubectl apply -f ./manifests/inventory-app.yaml
kubectl apply -f ./manifests/billing-app.yaml
