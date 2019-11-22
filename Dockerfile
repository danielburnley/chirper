FROM ruby:2.6.3-alpine3.9

RUN apk --no-cache add less

WORKDIR /app
COPY Gemfile ./
COPY Gemfile.lock ./
RUN apk --no-cache add alpine-sdk && bundle install && apk del alpine-sdk

ADD . /app

EXPOSE 4567
