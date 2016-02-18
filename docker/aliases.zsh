alias compose='docker-compose'
alias fig='docker-compose'
alias dm='docker-machine'

# Cleanup tasks.
alias diclean='docker rmi $(docker images -q --filter "dangling=true")'
alias dclean='docker ps -a | grep -v '\''CONTAINER\|config\|data\|run'\'' | cut -c-12 | xargs docker rm'

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
