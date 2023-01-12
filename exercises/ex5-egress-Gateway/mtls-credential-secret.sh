kubectl create -n istio-system secret generic mtls-credential --from-file=tls.key=certs/server.key --from-file=tls.crt=certs/server.crt --from-file=ca.crt=certs/ca.crt
