nnoremap <c-d> :Tbro exit<cr>

" Select a terminal pane to run commands in (follow with <tab> to see options)
nnoremap <leader>tp :TbroPane <tab>

" Run a command in the terminal pane
nnoremap <leader>t :Tbro

" Repeat the last command run in the terminal pane
nnoremap <leader>ta :w \| Tbro again<cr>

" Send the line under the cursor to the terminal
nnoremap <leader>tt :Tbro <c-r>=getline('.')<cr><cr>
