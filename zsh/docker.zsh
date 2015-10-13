alias docker='docker -H=tcp://192.168.35.2:2375'
#DOCKER_CERT_PATH=/Users/sechip/.docker/machine/certs/
#DOCKER_TLS_VERIFY=1

# openssl x509 -req -days 365 -sha256 -in vm-server.csr \
# -CA vm-ca.pem -CAkey vm-ca-key.pem -CAcreateserial \
# -out vm-server-cert.pem -extfile extfile.cnf \