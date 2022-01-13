require 'sinatra/base'
require 'sinatra/config_file'

class Main < Sinatra::Base
    register Sinatra::ConfigFile

    config_file './config.yaml'

    p(settings.port)

    set :port, settings.port

    get '/' do
        'Hello World!'
    end

    run! if app_file == $0
end
