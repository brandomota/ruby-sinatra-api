require 'bundler'

Bundler.require

$LOAD_PATH.unshift(File.expand_path('app', __dir__))

APP_ROOT = File.expand_path('app', __dir__)
Dir.glob(File.join(APP_ROOT,  'services', '*.rb')).sort.each { |file| require file }

Dir.glob(File.join(APP_ROOT,  'controllers', '*.rb')).sort.each { |file| require file }

Dir.glob(File.join(APP_ROOT,  'models', '*.rb')).sort.each { |file| require file }

Dir.glob(File.join(APP_ROOT,  'listener', '*.rb')).sort.each { |file| require file }
require File.join(APP_ROOT,  'config', 'application.rb')
require File.join(APP_ROOT, 'app.rb')

run SinatraApp::Main