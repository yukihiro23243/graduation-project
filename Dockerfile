FROM ruby:3.2

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs

WORKDIR /app

ENV BUNDLE_PATH=/usr/local/bundle

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . /app