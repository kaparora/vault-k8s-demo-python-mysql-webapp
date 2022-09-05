#!/bin/sh
set -o xtrace

# first delete it 
helm delete mysql

#installing mysql using a HELM chart
helm install mysql --set auth.rootPassword=root,auth.database=my_app,auth.username=vault,auth.password=vaultpw bitnami/mysql
