function docker --description 'Run docker, connected to `docker-machine`'
  # Make sure the docker environment is loaded
  set -q DOCKER_HOST; or eval (dm env)

  /usr/local/bin/docker $argv
end
