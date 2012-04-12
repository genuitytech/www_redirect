module WWWRedirect
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      request = Rack::Request.new(env)

      unless request.host.index(/^www\./)
        [301, {"Location" => build_path(request)}, []]
      else
        @app.call(env)
      end
    end

    private

    def build_path(request)
      path = "#{request.scheme}://www.#{request.host}"
      path << ":#{request.port}" unless request.port == 80
      path << request.path unless request.path == "/"
      path << "?#{request.query_string}" unless request.query_string.empty?
      path
    end
  end
end
