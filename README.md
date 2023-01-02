# amTraining
AM training

Three - Pillars
## TrafficShaping - L7 routing , Tls termination/Origination 
## Security - AuthN, AutZ 
## Observability - Logs/Metrics/Traces

Traffic Shaping 
VS
DR
GW
SE
SC

DR 
Spec 
- hostname
- Traffic Policy 
  - LB (simple , consistent hash)
  - connectionpool
  - port level settings
  - tls (client side for upstreams) 
  - Outlier detection
- Subset 
  - traffic-policy
  
  web-tier-svc.web-tier.svc.cluster.local
  app-tier-svc.app-tier.svc.cluster.local

 <img width="907" alt="image" src="https://user-images.githubusercontent.com/34051943/210194740-243bbfbb-b18c-4620-b732-4e6c822589fc.png">

