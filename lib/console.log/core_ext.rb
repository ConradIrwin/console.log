module ConsoleLog
  module CoreExt
    def console
      LSpace[:console] ||= Console.new
    end
  end
end

include ConsoleLog::CoreExt
