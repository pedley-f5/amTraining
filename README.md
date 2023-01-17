# amTraining
Istio AM Fundamental Training 

### Application Architecture
- WEB-TIER Frontend Application Service 
```css
web-tier-svc.web-tier.svc.cluster.local
```
- APP-TIER Backend Application Service
```css
app-tier-svc.app-tier.svc.cluster.local
```

<img width="937" alt="image" src="https://user-images.githubusercontent.com/34051943/212862803-0ae6e2a7-4998-43c7-8206-1812a925521c.png">

### Envoy Decoded 
<img width="1129" alt="image" src="https://user-images.githubusercontent.com/34051943/212862934-5e64f095-8be3-475b-b770-c73c0ceff0c8.png">


### PACKET-FLOW
<img width="1264" alt="image" src="https://user-images.githubusercontent.com/34051943/212861736-0f6de294-09e9-4eea-925f-d1add65b40ac.png">

 
## BUILDs Optional 


### K8s Install Single Node Cluster 
```css
curl -s https://raw.githubusercontent.com/learnbyseven/amTraining/main/builds/k8install/k8singleNode-install.sh | bash
```
### k8s Uninstall
```css
curl -s https://raw.githubusercontent.com/learnbyseven/amTraining/main/builds/k8-uninstall/k8-uninstall.sh | bash
```
## Exercise 1 AM deployment

### aM-Install 
```css
curl -s https://raw.githubusercontent.com/learnbyseven/amTraining/main/exercises/ex1-am-install/1-am-install/install_Aspenmesh.sh | bash
```
### aM-Install-UDF 
```css
curl -s https://raw.githubusercontent.com/learnbyseven/amTraining/main/exercises/ex1-am-install/1-am-install/udf-install_Aspenmesh.sh | bash
```
### aM-Uninstall
```css
curl -s https://raw.githubusercontent.com/learnbyseven/amTraining/main/exercises/ex1-am-install/2-am-uninstall/uninstall_Aspenmesh.sh | bash
```
### aM-Install-ALL-Components
```css
curl -s https://raw.githubusercontent.com/learnbyseven/amTraining/main/exercises/ex1-am-install/3-am-all-components-install/install_Aspenmesh_all.sh | bash
```
### aM-Install-ALL-Components-UDF
```css
curl -s https://raw.githubusercontent.com/learnbyseven/amTraining/main/exercises/ex1-am-install/3-am-all-components-install/udf_install_Aspenmesh_all.sh | bash
```
### aM-Uninstall-ALL-Components
```css
curl -s https://raw.githubusercontent.com/learnbyseven/amTraining/main/exercises/ex1-am-install/4-am-all-components-uninstall/uninstall_Aspenmesh_all.sh | bash
```



## Some important Ports 

Pilot Agent Process 
- 15004 -> ISTIOD debug ep
- 15020 -> Healthchecking, Metrics 
- 15053 -> DNS

Envoy Process
- 15000 - Admin Interface
- 15001 - Outbound Traffic 
- 15006 - Inbound traffic 
- 15021 - kube probes and metrics
- 15090 - Metrics 

## Tasks 
## Devops
- Reducing Deployment Risks
- Resilency  
## Sec-Ops 
- AuthN & AuthZ
- Encryption - Data in Transit 
- S2S - SPIFEE
- Enduser (JWT,Cookies etc)




