FROM ruby:2.6

WORKDIR /app
COPY Gemfile Gemfile.lock /app/

RUN apt-get update \
    && apt-get install -y nodejs npm \
    && npm install --global yarn \
    && gem update --system \
    && gem install bundler \
    && bundle instal