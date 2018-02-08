function dock-clean-hard
  # Make sure the docker environment is loaded
  set -q DOCKER_HOST; or eval (dm env)

  dock-clean
  docker rmi (docker images -q)
end
