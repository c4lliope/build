function desk --description 'Turn the desktop icons on (`desk true`) or off (`desk false`)'
  defaults write com.apple.finder CreateDesktop -bool $argv
  killall Finder
end
