require "dot/rails/version"

module DoT
  module Rails
    class Engine < ::Rails::Engine
      Application.assets.register_engine '.dot', Sprockets::DotTemplate
    end
  end
end
