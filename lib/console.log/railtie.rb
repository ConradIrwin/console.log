module ConsoleLog
  class Railtie < Rails::Railtie
    initializer "console.log.add_middleware" do |app|
      app.middleware.use Middleware
    end
  end
end
