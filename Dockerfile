FROM ruby:2.6-alpine

ENV APP /usr/src/app
ENV RAIL_ENV development

RUN mkdir -p $APP

RUN apt-get -y update

WORKDIR $APP

COPY Gemfile $APP/Gemfile
COPY Gemfile.lock $APP/Gemfile.lock

RUN gem install bundler
RUN bundle install
copy . $APP