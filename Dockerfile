FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /backend
WORKDIR /backend
COPY Gemfile /backend/Gemfile
COPY Gemfile.lock /backend/Gemfile.lock

RUN gem install bundler
RUN bundle install
COPY . /backend

EXPOSE 3000
