function setup_ruby_project
  cp -r ~/.config/fish/templates/setup_ruby_project/{,.}* .

  and mkdir bin
  and cp (which docker-compose) bin/

  and drun -v (pwd):/app --workdir /app ruby bundle lock
  and dc build

  and git init
  and git add .
  and git commit -m "Initial commit, Ruby on Docker"

  and dcrun web rspec
end
