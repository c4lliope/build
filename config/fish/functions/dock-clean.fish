function dock-clean
  # Make sure the docker environment is loaded
  set -q DOCKER_HOST; or eval (dm env)

  docker ps -aq -f status=exited | xargs docker rm -v $argv;
end
