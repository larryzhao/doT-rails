require "execjs"

module DoT
  module Source
    def self.path
      @path = File.expand_path('../../../vendor/assets/javascripts/doT.js', __FILE__)
    end

    def self.path=(path)
      @contents = @version = @context = nil
      @path = path
    end

    def self.contents
      @contents ||= File.read(path)
    end

    def self.context
      @context ||= ExecJS.compile(contents)
    end
  end

  class << self
    def compile(template)
      template = template.read if template.respond_to?(:read)
      Source.context.call("doT.compileToString", template)
    end

    def context_for(template)
      ExecJS.compile("var render = #{compile(template)}")
    end

    def render(template, locals = {})
      context_for(template).call("render", locals)
    end
  end
end
