function cmd
  alias $argv[1]='ls'
  funcsave $argv[1]

  nvim ~/.config/fish/functions/$argv[1].fish
end
