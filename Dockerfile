FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /internship
WORKDIR /internship
RUN gem install rspec
ADD . /internship
