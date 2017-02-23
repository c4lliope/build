FROM ruby:latest

ADD Gemfile Gemfile.lock /app/
WORKDIR /app

RUN ls -a
RUN cat Gemfile
RUN bundle install
