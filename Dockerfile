FROM alpine:edge

MAINTAINER Grayson Wright <wright.grayson@gmail.com>
ENV CMAKE_EXTRA_FLAGS=-DENABLE_JEMALLOC=OFF
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# Install dependencies for our tools
RUN apk add --update-cache --virtual build-deps --no-cache \
    autoconf \
    automake \
    cmake \
    g++ \
    libtool \
    libuv \
    linux-headers \
    lua5.3-dev \
    m4 \
    make \
    unzip \
    libtermkey-dev \
    lua-sec

# Install additional dependencies through the normal apk command
RUN apk add --update-cache \
    curl \
    git \
    libtermkey \
    ruby \
    ruby-dev \
    ruby-io-console \
    unibilium

# Install NeoVim as our text editor
RUN git clone https://github.com/neovim/libvterm.git && \
    cd libvterm && \
    make && \
    make install && \
    cd ../ && rm -rf libvterm
RUN git clone https://github.com/neovim/neovim.git nvim && \
    cd nvim && \
    make && \
    make install && \
    cd .. && \
    rm -rf nvim && \
    apk del build-deps

# Install python3 support for neovim, required by some plugins
RUN apk add --update-cache \
    gcc \
    musl-dev \
    python3 \
    python3-dev &&\
    pip3 install neovim

# Install Dein as a package/plugin manager
RUN curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/installer.sh &&\
  sh /tmp/installer.sh /dein &&\
  rm /tmp/installer.sh

# Install selecta for fuzzy-finding from a list
ADD https://github.com/garybernhardt/selecta/raw/master/selecta /usr/bin
RUN chmod +x /usr/bin/selecta

# Add development tools
RUN apk add --update-cache \
    bash \
    docker \
    fish \
    git-perl \
    hub \
    openssh \
    the_silver_searcher \
    tmux \
    tree

# Add custom configuration
ENV XDG_CONFIG_HOME=/config
ADD config $XDG_CONFIG_HOME

# Install plugins with Dein
RUN nvim -c "call dein#install()" -c qall

WORKDIR /base

ENV PATH "/root/bin:$PATH"
