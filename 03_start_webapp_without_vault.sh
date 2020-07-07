#!/bin/sh
set -o xtrace

#start the webapp using a configmap, deployment and a service port 30001 nodeport
#you can change the service type if you need to

#deleting before creating
kubectl delete -f configmap.yaml
kubectl delete -f webapp.yaml

kubectl apply -f configmap.yaml
kubectl apply -f webapp.yaml