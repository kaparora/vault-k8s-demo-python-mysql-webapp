#!/bin/sh
set -o xtrace

#delete sa before creating
kubectl delete serviceaccount webapp-sa
#create webapp-sa
kubectl create serviceaccount webapp-sa

#deleting before creating
kubectl delete -f webapp_with_vault.yaml

#webapp with vault annotations
kubectl apply -f webapp_with_vault.yaml