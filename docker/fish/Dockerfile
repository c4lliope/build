FROM docker

RUN apk update
RUN apk add -U \
  fish\
  git \
  tree \
  hub \
  openssh \
  the_silver_searcher \
  tmux

WORKDIR /root
RUN fish -c 'set -U fish_user_paths /root/.dotfiles/bin $fish_user_paths'
