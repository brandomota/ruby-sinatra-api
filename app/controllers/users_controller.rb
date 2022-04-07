module SinatraApp
  module Routes
    module UserRoutes
      include SinatraApp::Services
    def self.registered(app)

      get_users = lambda do
        serv = Service.new
        print("ok")
        serv.message_received
        status 200
        body "ok"
      end

      app.get '/users', &get_users
      # app.get '/users:id', &get_user_by_id
      #app.post '/users', &create_user
      #app.put '/users/:id', &update_user
      #app.delete '/users/:id', &delete_user
      end
    end
  end
end



