function dockerize
  cp ~/.config/fish/templates/dockerize/* .

  mkdir bin
  cp (which docker-compose) bin/
end
