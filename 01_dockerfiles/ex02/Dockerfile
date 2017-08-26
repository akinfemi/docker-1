FROM ruby

RUN apt-get update -y && apt-get install libgmp-dev libgsl0-dev nodejs -y && gem install bundler && gem install rails
EXPOSE 3000
ONBUILD COPY . /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD RUN bundle install && rails db:migrate && rails db:seed
