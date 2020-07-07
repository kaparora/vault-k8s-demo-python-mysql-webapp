#!/bin/sh
set -o xtrace

kubectl delete -f configmap.yaml
kubectl delete -f webapp.yaml
