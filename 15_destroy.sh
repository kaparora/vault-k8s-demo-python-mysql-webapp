#!/bin/sh
#destroy all resources
kubectl delete -f configmap.yaml
kubectl delete -f webapp.yaml
kubectl delete -f webapp_with_vault.yaml
kubectl delete serviceaccount webapp-sa
helm delete vault
helm delete mysql
