#!/bin/bash
echo "*********Uninstalling Aspenmesh*********"
helm -n istio-system uninstall istiod
sleep 3
helm -n istio-system uninstall istio-base
sleep 4
kubectl delete ns istio-system
echo "*********Aspenmesh uninstalled - See you soon :) *********"
