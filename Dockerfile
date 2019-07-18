FROM ruby:2.3.5-alpine3.4

COPY Gemfile* Procfile ./

RUN gem install bundler --no-document && bundle install

