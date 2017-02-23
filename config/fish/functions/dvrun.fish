function dvrun
  drun -v (pwd):/app --workdir /app -p 3000:3000 $argv
end
