require 'rack'
class Application

    def call(env)
        time = Time.now
        mod_time = time.strftime("%k").to_i
        resp = Rack::Response.new
        if mod_time < 12
              resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        resp.finish
    end



end