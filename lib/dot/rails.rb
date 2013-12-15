require "dot/rails/version"

module DoT
  module Rails
    class Engine < ::Rails::Engine
      initializer "sprockets.doT", :after => "sprockets.environment", :group => :all do |app|
        next unless app.assets
        app.assets.register_engine('.dot', DoT::Template)
      end
    end
  end
end
