function verbose --description 'Say what you\'re doing when you run a command'
  echo "$argv"
  eval "$argv"
end
