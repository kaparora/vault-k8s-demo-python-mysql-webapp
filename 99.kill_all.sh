#!/bin/sh
set -o xtrace

kubectl delete -f configmap.yaml
kubectl delete -f webapp.yaml



helm delete mysql
helm delete vault
kubectl delete serviceaccount webapp-sa
kubectl delete sa vault-auth
kubectl delete -f vault-auth-secret.yaml



kubectl get pods mysql-client -o yaml mysql-client.yaml
kubectl delete -f mysql.client.yaml
kubectl delete pvc data-mysql-0
rm mysql-client.yaml


kubectl delete -f configmap.yaml
kubectl delete -f webapp.yaml
kubectl delete -f webapp_with_vault.yaml
kubectl delete serviceaccount webapp-sa