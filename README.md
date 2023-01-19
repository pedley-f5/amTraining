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

<img width="953" alt="image" src="https://user-images.githubusercontent.com/34051943/212863442-eb4f1ee3-597e-43d8-8ba7-a3ac280182af.png">

### Envoy Decoded 
<img width="989" alt="image" src="https://user-images.githubusercontent.com/34051943/213438872-a79f9487-aa71-40e6-b98d-8d8a94f3e0d6.png">
<img width="1129" alt="image" src="https://user-images.githubusercontent.com/34051943/212862934-5e64f095-8be3-475b-b770-c73c0ceff0c8.png">



### PACKET-FLOW
<img width="1264" alt="image" src="https://user-images.githubusercontent.com/34051943/212861736-0f6de294-09e9-4eea-925f-d1add65b40ac.png">

### Applying conf
<img width="901" alt="image" src="https://user-images.githubusercontent.com/34051943/212995845-dc7d75f4-db5a-49eb-96e0-a4a9e7e040b3.png">


### Envoy - :) Don't Afraid
<img width="987" alt="image" src="https://user-images.githubusercontent.com/34051943/213439392-3da77e9e-9ecd-4b11-9fb7-40f7f176f1e4.png">


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







