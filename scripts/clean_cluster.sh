#!/bin/bash

kubectl delete deployments --all
kubectl delete sts --all
kubectl delete pvc --all
kubectl delete services --all
kubectl delete secrets --all
