#!/bin/sh
set -o xtrace

#Building the container for our app locally
cd app
docker build -t kaparora/vault-demo-webapp:latest .
cd ..