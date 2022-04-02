require 'bundler'

Bundler.require

$LOAD_PATH.unshift(File.expand_path('app', __dir__))

APP_ROOT = File.expand_path('app', __dir__)

require File.join(APP_ROOT,  'config', 'application.rb')
require File.join(APP_ROOT, 'main.rb')


run SinatraApp::Main