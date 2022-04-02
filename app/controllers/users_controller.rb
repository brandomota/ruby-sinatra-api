module SinatraApp
  module Routes
    module UserRoutes
    def self.registered(app)
      get_users = lambda do
        status 200
        body "ok"
      end

      app.get '/users', &get_users
      app.get '/users:id', &get_user_by_id
      app.post '/users', &create_user
      app.put '/users/:id', &update_user
      app.delete '/users/:id', &delete_user
      end
    end
  end
end



