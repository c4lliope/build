function b
  drun -v (pwd):/app --workdir /app ruby bundle lock

  dc run --name bundle web bundle install
  and docker commit bundle bundled
  and docker rm bundle
  and docker tag bundled assemble/web
end
