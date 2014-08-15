module ConsoleLog
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      LSpace.with(:console => Console::Buffered.new) do

        result = @app.call(env)
        _, headers, response = result
        if headers['Content-Type'] =~ %r{text/html} && response.respond_to?(:body=) && LSpace[:console].any?
          response.body += LSpace[:console].to_script
        end

        result
      end
    end
  end
end

include ConsoleLog::CoreExt
