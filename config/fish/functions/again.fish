function again --description 'Re-run the last command'
  eval (history | ag -v again | head -n 1)
end
