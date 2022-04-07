source "https://rubygems.org"

gem "yaml"
gem "sinatra"
gem "sinatra-contrib"
gem "puma"
gem "sinatra-activerecord"
gem "sqlite3"
gem "rake"
gem "httparty"
gem "rest-client"
gem "ffi"
gem "bunny"

group :development do
  gem "rubocop"
end

group :production do
  gem "unicorn" if !Gem.win_platform?
end