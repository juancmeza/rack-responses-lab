class Application
    def call(env)
        response = Rack::Response.new
        time = Time.now.hour

        if time >= 12
            response.write "Good Afternoon!"
        else 
            response.write "Good Morning!"
        end
        response.finish
    end
end