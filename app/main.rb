require_relative 'controllers/users_controller'

module SinatraApp

class Main < Sinatra::Base
  register Sinatra::ConfigFile
  register Sinatra::Namespace

  config_file('./config/config.yaml')

  ## setting routes

  register SinatraApp::Routes::UserRoutes
end
end
