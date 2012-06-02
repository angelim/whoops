module Whoops
  class Engine < Rails::Engine
    initializer "static assets" do |app|
      app.middleware.use ::ActionDispatch::Static, File.expand_path("../../../app/assets/javascripts", __FILE__)
    end
    
    initializer "precompile whoops assets" do |app|
      app.config.assets.precompile += ["whoops.js", "whoops-application.css"]
    end
  end
end
