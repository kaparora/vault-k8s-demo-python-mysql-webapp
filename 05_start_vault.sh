set -o xtrace
#Delete stuff
helm delete vault
kubectl delete pvc data-vault-0

#Set Vault License as K8s Secrets
secret=$(cat license.hclic)
kubectl create secret generic vault-ent-license --from-literal="license=${secret}"

#Install Vault in HA via Helm
helm repo add hashicorp https://helm.releases.hashicorp.com
helm repo update
#List all available Vault Repos with Versions. 
helm search repo hashicorp/vault -l

helm install vault hashicorp/vault --values vault-helm-values.yml

helm install \
  vault \
  hashicorp/vault \
  -f vault-helm-values.yaml \
  --version 0.20.1


# Check Vault License within vaults pod
# kubectl exec -it vault-0 /bin/sh --vault login root
#   curl \
#     --header "X-Vault-Token: root" \
#     http://127.0.0.1:8200//v1/sys/license/status 


# Check Vault License on localhost
# export VAULT_ADDR=http://localhost:30000
# export VAULT_TOKEN=root

# curl \
#     --header "X-Vault-Token: root" \
#     http://127.0.0.1:30000/v1/sys/license/status | jq
