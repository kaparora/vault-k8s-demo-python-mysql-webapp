#!/bin/sh
export VAULT_ADDR=http://localhost:30000
export VAULT_TOKEN=root

#write the license
LICENSE=`cat license.txt`
vault write sys/license text=$LICENSE
#check the status of Vault server
vault status
vault read sys/license