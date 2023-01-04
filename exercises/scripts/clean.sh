#!/bin/bash
# clean namespaces shortcut
kubectl -n app-tier delete vs,gw,dr,se --all
sleep 1
kubectl -n web-tier delete vs,gw,dr,se --all
