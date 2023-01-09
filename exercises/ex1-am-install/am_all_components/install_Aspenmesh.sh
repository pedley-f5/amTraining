#!/bin/bash
echo "*********Starting Aspen Mesh Installation*********"
sleep 2
curl -L -k https://ec2-15-207-229-119.ap-south-1.compute.amazonaws.com/aspenmesh-carrier-grade-1.14.5-am1-linux.tar.gz  | tar -xz
sleep 2
cd aspenmesh-carrier-grade-1.14.5-am1 
cat > values.yaml <<EOF
aspen-mesh-controlplane:
  enabled: true
  replicaCount: 1
  clusterId: cluster1
  userAuth:
    type: none
  resources:
    requests:
      memory: "128Mi"
      cpu: "100m"
    limits:
      memory: "160Mi"
      cpu: "100m"
  modelRuntimeResources:
    requests:
      memory: "128Mi"
      cpu: "100m"
    limits:
      memory: "128Mi"
      cpu: "100m"
##
aspen-mesh-dashboard:
  enabled: true
  replicaCount: 1
##
aspen-mesh-metrics-collector:
  enabled: true
  server:
    serviceResources:
      requests:
        memory: "512Mi"
        cpu: "500m"
      limits:
        memory: "512Mi"
        cpu: "500m"
    persistentVolume:
      enabled: false
  alertmanager:
    persistentVolume:
      enabled: false

##
aspen-mesh-event-storage:
  enabled: true
  resources:
    requests:
      memory: "512Mi"
      cpu: "500m"
    limits:
      memory: "512Mi"
      cpu: "500m"
  config:
    cluster_size: 1
    seed_size: 1
  persistence:
    enabled: false
##
jaeger:
  enabled: true
  cassandra:
     persistence:
        enabled: false
     cluster_size: 1
aspen-mesh-packet-inspector:
  enabled: false
pilot:
  autoscaleMin: 1
  autoscaleMax: 1
  replicaCount: 1
  resources:
    requests:
      cpu: 500m
      memory: 2048Mi
global:
  certificateCustomFields: true
  proxy:
    resources:
      requests:
        cpu: 100m
        memory: 128Mi
      limits:
        cpu: 2000m
        memory: 1024Mi
  meshID: mesh1
  multiCluster:
    clusterName: cluster1
  network: network1
gateways:
  istio-ingressgateway:
    type: NodePort
    autoscaleMin: 1
  istio-egressgateway:
    autoscaleMin: 1
EOF
kubectl create ns istio-system
sleep 3
helm install istio-base --namespace istio-system manifests/charts/base
sleep 2
kubectl get crds | grep 'istio.io'
sleep 2 
helm install istiod manifests/charts/istio-control/istio-discovery --namespace istio-system --values values.yaml
sleep 3
helm install istio-egress manifests/charts/gateways/istio-egress --namespace istio-system --values values.yaml
sleep 3
helm install istio-ingress manifests/charts/gateways/istio-ingress --namespace istio-system --values values.yaml
sleep 3
helm -n istio-system install aspen-mesh-add-ons manifests/charts/addons --values values.yaml
echo "*********Aspenmesh Installation Ends*********"
