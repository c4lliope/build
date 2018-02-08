function drun
  # Make sure the docker environment is loaded
  set -q DOCKER_HOST; or eval (dm env)

  docker run --rm -it $argv;
end
