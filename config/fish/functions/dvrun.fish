function dvrun
  # Make sure the docker environment is loaded
  set -q DOCKER_HOST; or eval (dm env)

  drun -v (pwd):/app --workdir /app $argv
end
