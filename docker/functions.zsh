# Configure Docker client to a remote Docker Machine
function dme {
  echo "Loading Docker env for machine: $1"
  eval $(docker-machine env $1);
}

# Configure Docker client to a remote Docker Machine, with Swarm enabled.
function dmes {
  echo "Loading Docker env --swarm for machine: $1"
  eval $(docker-machine env --swarm $1);
}

dclogs() {
  format="table {{.Label \"com.docker.compose.project\"}}\t{{.Label \"com.docker.compose.service\"}}\t{{.Names}}\t{{.Status}}"
  line=$(docker ps -a --format "${format}" | fzf "$@")
  name=$(echo "${line}" | awk '{print $3}')
  [[ -z "${name}" ]] && return
  docker logs --tail=500 -f "${name}"
}
