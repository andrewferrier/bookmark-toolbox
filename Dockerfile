FROM ruby:2.2
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY Gemfile /usr/src/app/
RUN bundle install
COPY . /usr/src/app
RUN rake scss
