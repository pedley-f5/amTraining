#!/bin/bash
echo "*********Uninstalling Aspenmesh*********"
sleep 3
helm -n istio-system uninstall aspen-mesh-add-ons
sleep 3
helm -n istio-system uninstall istio-egress
sleep 3
helm -n istio-system uninstall istio-ingress
sleep 3
helm -n istio-system uninstall istiod
sleep 3
helm -n istio-system uninstall istio-base
sleep 4
kubectl delete ns istio-system
echo "*********Aspenmesh uninstalled - See you soon :) *********"
