" Ctrl-P to fuzzy-search files
nnoremap <c-p> :<c-u>Denite file_rec<cr>

call denite#custom#var('file_rec', 'command', [
      \'ag', '--follow', '--nocolor', '--nogroup', '-g', ''
      \])

call denite#custom#filter('matcher_ignore_globs', 'ignore_globs', [
      \'node_modules'
      \])
