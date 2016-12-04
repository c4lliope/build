FROM docker

RUN apk update
RUN apk add -U \
  bash \
  fish\
  git \
  git-perl \
  hub \
  openssh \
  the_silver_searcher \
  tmux \
  tree

# Add custom configuration
ADD config $XDG_CONFIG_HOME

