FROM ruby:3.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

WORKDIR /app

ADD Gemfile /app/Gemfile

RUN bundle install
ADD . /app

RUN mkdir -p tmp/sockets