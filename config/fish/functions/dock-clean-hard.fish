function dock-clean-hard
  dock-clean
  docker rmi (docker images -q)
end
