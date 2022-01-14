require 'sinatra/base'
require 'sinatra/namespace'

class UsersController < Sinatra::Base
    register Sinatra::Namespace

    namespace '/users' do
        get '/' do
            status 400
            body ' not built yet, go away!'
        end
    end
end