require 'tilt'

module DoT
  class Template < Tilt::Template
    def self.engine_initialized?
      defined? ::DoT
    end

    # Autoload eco library. If the library isn't loaded, Tilt will produce
    # a thread safetly warning. If you intend to use `.eco` files, you
    # should explicitly require it.
    def initialize_engine
      require_template_library 'dot'
    end

    def prepare
    end

    # Compile template data with Eco compiler.
    #
    # Returns a JS function definition String. The result should be
    # assigned to a JS variable.
    #
    #     # => "function(...) {...}"
    #
    def evaluate(scope, locals, &block)
      DoT.compile(data)
    end
  end
end
