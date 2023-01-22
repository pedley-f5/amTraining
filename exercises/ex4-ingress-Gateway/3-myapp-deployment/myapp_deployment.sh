#!/bin/bash
kubectl create ns myapp
kubectl label ns myapp istio-injection=enabled
kubectl get namespace -L istio-injection
kubectl -n myapp create secret tls myapp-certs --key ../certs/server.key --cert ../certs/server.crt
kubectl -n myapp create configmap myapp-configmap --from-file=nginx.conf
kubectl -n myapp create -f myapp_deployment.yaml
