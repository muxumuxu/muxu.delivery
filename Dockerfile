FROM ruby:2.4.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /muxu.delivery
WORKDIR /muxu.delivery
ADD Gemfile /muxu.delivery/Gemfile
ADD Gemfile.lock /muxu.delivery/Gemfile.lock
RUN bundle install
ADD . /muxu.delivery
CMD bundle exec rails s -p ${PORT:-3000} -b '0.0.0.0'