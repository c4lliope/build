function dcrun
  # Make sure the docker environment is loaded
  set -q DOCKER_HOST; or eval (dm env)

  dc run --rm $argv;
end
