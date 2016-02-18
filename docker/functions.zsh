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
