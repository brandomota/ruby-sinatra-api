require_relative 'services/service'
require_relative 'controllers/users_controller'
require_relative 'listener/rabbitmq'

module SinatraApp

class Main < Sinatra::Base
  register Sinatra::ConfigFile
  register Sinatra::Namespace

  register Sinatra::ActiveRecordExtension

  config_file('./config/config.yaml')
  set :database_file, 'config/database.yaml'

  ## setting routes

  register SinatraApp::Routes::UserRoutes
end
end
