" # Comments borrowed from https://github.com/tpope/vim-fugitive

" View any blob, tree, commit, or tag in the repository with :Gedit (and
" :Gsplit, :Gvsplit, :Gtabedit, ...).
nnoremap <leader>ge :Gedit<space>

" Edit a file in the index and write to it to stage the changes.

" Use :Gdiff to bring up the staged version of the file side by side
" with the working tree version
" and use Vim's diff handling capabilities to stage the file's changes.
nnoremap <leader>gd :Gdiff<cr>

" Bring up the output of git status with :Gstatus.
" Press - to add/reset a file's changes, or p to add/reset --patch.
" And guess what :Gcommit does!
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>

" :Gblame brings up an interactive vertical split with git blame output.
" Press enter on a line to edit the commit where the line changed,
" or o to open it in a split.
" When you're done, use :Gedit in the historic buffer
" to go back to the work tree version.
nnoremap <leader>gb :Gblame<cr>

" :Gmove does a git mv on a file and simultaneously renames the buffer.
" :Gremove does a git rm on a file and simultaneously deletes the buffer.
nnoremap <leader>gm :Gmove<space>
nnoremap <leader>gr :Gremove<cr>

" Use :Ggrep to search the work tree (or any arbitrary commit) with git grep,
" skipping over that which is not tracked in the repository. :Glog loads all
" previous revisions of a file into the quickfix list so you can iterate over
" them and watch the file evolve!
nnoremap <leader>gl :Glog<cr>

" :Gread is a variant of git checkout -- filename that operates on the buffer
" rather than the filename. This means you can use u to undo it and you never
" get any warnings about the file changing outside Vim. :Gwrite writes to both
" the work tree and index versions of a file, making it like git add when
" called from a work tree file and like git checkout when called from the
" index or a blob in history.
" (Capitalized to avoid a conflict with `git commit`)
nnoremap <leader>gC :Gread<cr>

" Use :Gbrowse to open the current file on GitHub,
" with optional line range (try it in visual mode!).
" If your current repository isn't on GitHub,
" git instaweb will be spun up instead.
nnoremap <leader>go :Gbrowse<cr>

" Add %{fugitive#statusline()} to 'statusline' to get an indicator with the
" current branch in (surprise!) your statusline.

" Last but not least, there's :Git for running any arbitrary command,
" and Git! to open the output of a command in a temp file.
