# vault-k8s-demo-python-mysql-webapp

My test Env
1) Docker Desktop v2.3.0.3  with k8s enabled
2) Helm v3.2.1 
3) MacOS 10.15.5

Create Docker Image for your Demo. Change in **app** directory and push your image in docker hub. Change image in your configuration. 

This is a bunch of shell scripts to test HashiCorp Vault K8S integration including secret injection.
We use the k8s auth method, mysql db secret engine, dynamic secrets, transit and transform secret engine

This is tested on my Macbook with Docker desktop k8s
All services are exposed using NodePort

In case you are using a remote k8s cluster you may need to make changes and update the VAULT_ADDR parameter to run the scripts locally

This demo works with Vault enterprise as we are using the transform secret engine. 
You must place the enterprise licesne in license.txt file