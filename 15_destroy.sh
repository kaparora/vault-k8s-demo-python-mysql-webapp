#!/bin/sh
#destroy all resources
kubectl delete -f configmap.yaml
kubectl delete -f webapp.yaml
kubectl delete -f webapp_with_vault.yaml
kubectl delete serviceaccount webapp-sa
kubectl delete secret generic vault-ent-license
helm delete vault
helm delete mysql
