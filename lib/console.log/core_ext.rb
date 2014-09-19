module ConsoleLog
  module CoreExt
    # This is a method_missing because `be rails c` does
    # wierd stuff with console methods.
    def method_missing(name)
      if name.to_s == "console"
        LSpace[:console] ||= Console.new
      else
        super
      end
    end
  end
end

include ConsoleLog::CoreExt
