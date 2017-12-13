function repeat --description 'Re-run the last command'
  eval (history | ag -v repeat | head -n 1)
end
