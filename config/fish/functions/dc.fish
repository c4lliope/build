function dc
  # Make sure the docker environment is loaded
  set -q DOCKER_HOST; or eval (dm env)

  if test -e /usr/local/bin/docker-compose
    # Use the native docker-compose installed by homebrew if it's available.
    # This helps us avoid a caching issue
    # that exists in the containerized version of `docker-compose`
    # See https://github.com/docker/compose/issues/3424
    /usr/local/bin/docker-compose $argv
  else
    docker-compose $argv
  end
end
