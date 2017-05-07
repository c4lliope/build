function dockerize
  cp ~/.config/fish/templates/dockerize/* .

  mkdir bin 2> /dev/null
  cp (which docker-compose) bin/
end
