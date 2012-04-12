module WWWRedirect
  class Railtie < Rails::Railtie
    initializer "www_redirect.configure_redirect" do |app|
      app.middleware.use WWWRedirect::Middleware
    end
  end
end
