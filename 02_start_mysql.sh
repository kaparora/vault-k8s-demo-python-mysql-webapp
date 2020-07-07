#!/bin/sh
set -o xtrace

#installing mysql using a HELM chart
helm install mysql stable/mysql \
--set mysqlRootPassword=root,mysqlDatabase=my_app,mysqlUser=vault,mysqlPassword=vaultpw \
--version 1.6.2