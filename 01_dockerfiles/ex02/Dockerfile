FROM ruby:2

RUN apt-get update && apt-get install -y nodejs && gem install bundler && gem install rails

ONBUILD COPY . /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD RUN bundle install 
ONBUILD RUN rails db:migrate 
ONBUILD RUN rails db:seed
