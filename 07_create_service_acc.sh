#!/bin/sh
set -o xtrace
#delete before creting
kubectl delete serviceaccount vault-auth

#create service account for k8s auth method
kubectl create serviceaccount vault-auth
#assign auth-delegator cluster role binding to Vault sa
kubectl apply --filename CRB-vault-auth-service-account.yaml

#create secret for sa vault-auth -- required since k8s version 1.24+
kubectl apply -f vault-auth-secret.yaml