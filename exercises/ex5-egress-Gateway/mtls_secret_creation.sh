kubectl create -n istio-system secret generic mtls-credential --from-file=tls.key=server.key --from-file=tls.crt=server.crt --from-file=ca.crt=ca.crt
