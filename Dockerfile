FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /non-alc
WORKDIR /non-alc

COPY Gemfile /non-alc/Gemfile
COPY Gemfile.lock /non-alc/Gemfile.lock

RUN bundle install

COPY . /non-alc