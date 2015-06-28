module Blogit
  module Admin
    class Engine < Rails::Engine
      
      BLOGIT_ADMIN_ROOT = File.join(File.dirname(__FILE__), "..", "..", "..")
      
      isolate_namespace Blogit::Admin

      
      if Rails.env.development?
        ActionDispatch::Callbacks.to_prepare do
          load(File.join(BLOGIT_ADMIN_ROOT, "config", "initializers",
            "extend_blogit_models.rb"))
        end
      end
      
    end
  end
end