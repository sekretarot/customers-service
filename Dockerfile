FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /customers-service
WORKDIR /customers-service

COPY Gemfile /customers-service/Gemfile
COPY Gemfile.lock /customers-service/Gemfile.lock

RUN bundle install

COPY . /customers-service