" RSpec.vim mappings

" Determine relative path in the shell
let g:rspec_command = "w \| :Tbro time docker-compose run --rm web rspec (echo {spec} | sed -e \"s,$PWD/,,\")"

nnoremap <Leader>sf :call RunCurrentSpecFile()<CR>
nnoremap <Leader>ss :call RunNearestSpec()<CR>
nnoremap <Leader>sl :call RunLastSpec()<CR>
nnoremap <Leader>sa :call RunAllSpecs()<CR>
nnoremap <Leader>sr :w \| :Tbro time rake<CR>
