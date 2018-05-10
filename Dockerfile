FROM ruby:2.4.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /geodata
WORKDIR /geodata
COPY Gemfile /geodata/Gemfile
COPY Gemfile.lock /geodata/Gemfile.lock
RUN bundle install
COPY . /geodata
