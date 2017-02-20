set fish_user_paths ~/.dev/bin
set EDITOR nvim

eval (docker-machine env default)
bind \cp 'vi -c ":Denite file_rec"'
