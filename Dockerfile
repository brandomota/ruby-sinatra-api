FROM ruby

WORKDIR /app

COPY . /app

COPY Gemfile Gemfile.lock ./

RUN bundler install
CMD bundler exec unicorn -c unicorn.rb