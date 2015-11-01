alias docker='docker -H=tcp://192.168.35.2:2375'
#DOCKER_CERT_PATH=/Users/sechip/.docker/machine/certs/
#DOCKER_TLS_VERIFY=1

# openssl x509 -req -days 365 -sha256 -in vm-server.csr \
# -CA vm-ca.pem -CAkey vm-ca-key.pem -CAcreateserial \
# -out vm-server-cert.pem -extfile extfile.cnf \

function dk() {
  opt="-H=tcp://192.168.35.2:2375"
  if [ "$1" = "clean" ]; then
    echo "cleaning docker containers and images"
    created="$(docker ps -f status=created -q)"
    docker  rm $(docker ps -f status=exited -q)
    docker rmi $(docker images | grep "^<none>" | awk '{print $3}')
  else
    echo "executing docker $opt $@"
    docker  $@
  fi
}
