require 'sinatra/base'
require 'sinatra/config_file'

class Main < Sinatra::Base
    register Sinatra::ConfigFile

    config_file('./config.yaml')
end

