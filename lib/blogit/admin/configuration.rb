module Blogit
  module Admin
    module Configuration
      
      extend ActiveSupport::Concern
      
      included do
        
        ##
        # Which layout should blogit-admin load for the admin actions
        #   (default: "blogit_admin")
        #
        # Returns a String
        config_accessor(:admin_layout) { "blogit_admin" }

        ##
        # Restrict editing Posts to the original author only? (default: false)
        #
        # Returns true or false
        config_accessor(:author_edits_only) { false }

        ##
        # Which FormBuilder class should the admin forms use?
        #   (default: "Blogit::Admin::FormsHelper::FormBuilder")
        #
        # Returns a String
        config_accessor(:admin_form_builder_class) {
          "Blogit::Admin::FormsHelper::FormBuilder" }

        ##
        # Which base controller should Blogit::Admin::ApplicationController inherit
        # from? (default: "::ApplicationController")
        #
        # Returns a String
        config_accessor(:admin_application_controller_base_class) {
          "::ApplicationController" }
          
        ##
        # Which WYSIWYG editor should **Blogit Admin** use in the posts form? Currently
        #   supported options include :epic_editor. (default: :epic_editor)
        #
        # Returns a Symbol
        config_accessor(:admin_wysiwyg_editor) { :epic_editor }
      end
      
    end
  end
end