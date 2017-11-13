alias compose='docker-compose'
alias fig='docker-compose'
alias dm='docker-machine'

alias docker-ps-stopped='docker ps -a --filter="status=exited"'
alias docker-rm-stopped='docker rm -v $(docker ps -a -q -f status=exited)'

# List all stopped containers that are not in a Docker Compose project.
alias docker-ps-stopped-noncompose="docker ps -a --filter 'status=exited' --format '{{if not (.Label \"com.docker.compose.project\") }}{{.ID}} {{.Names}}{{end}}' | sed '/^\s*$/d'"
alias docker-rm-stopped-noncompose="docker-ps-stopped-noncompose | cut -c-12 | xargs docker rm"

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
