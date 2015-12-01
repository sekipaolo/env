
function registry_ssl() {
openssl s_client \
  -showcerts -connect \
  registry.docker.mtvnn.com:443 \
  </dev/null 2>/dev/null | \openssl x509\
  -outform PEM >ca.crt
sudo mkdir -p /etc/docker/certs.d/registry.docker.mtvnn.com/  
sudo cp ca.crt /etc/docker/certs.d/registry.docker.mtvnn.com/ca.crt  
cat ca.crt | sudo tee -a /etc/ssl/certs/ca-certificates.crt

  openssl s_client \
      -showcerts -connect \
      registryinfra.docker.mtvnn.com:443 \
      </dev/null 2>/dev/null | \openssl x509\
      -outform PEM >ca.crt
  sudo mkdir -p /etc/docker/certs.d/registryinfra.docker.mtvnn.com/  
  sudo cp ca.crt /etc/docker/certs.d/registryinfra.docker.mtvnn.com/ca.crt  
  cat ca.crt | sudo tee -a /etc/ssl/certs/ca-certificates.crt
}

# containers and images helper
function dk() {
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

