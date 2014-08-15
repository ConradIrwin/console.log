module ConsoleLog

  class Console
    def log(*args)
      puts(*args)
    end

    alias warn log
    alias error log

    def assert(bool, msg)
      puts msg unless bool
    end

    def dir(a)
      puts a.inspect
    end

    class Buffered < Console
      include Enumerable
      def initialize
        @buffer = []
      end

      [:log, :warn, :error, :assert].each do |f|
        define_method(f) do |*args|
          super(*args)
          @buffer << [f, caller(1).first, args]
        end
      end

      def each(*a, &b)
        @buffer.each(*a, &b)
      end

      def to_script
        "<script>#{map{ |(*call)| log_line(*call) }.join("\n")}</script>"
      end

      private

      def log_line(fn, caller, args)
        code = "console[#{fn.to_json}].apply(console, #{args.to_json})"
        file, line, _ = caller.split(":")
        file = file.sub(Rails.root.to_s + "/", "")
        space = "\n" * (line.to_i - 1)
        comment = "\n//# sourceURL=#{file}"
        "eval(#{[space, code, comment].join.to_json})".gsub("</script>", "<\\u002Fscript>")
      end
    end
  end
end
