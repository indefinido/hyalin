module Hyalin
  module Tasks
    require 'rails/generators'

    class Install < Rails::Generators::Base

      def copy_initializer_file
        template 'hyalin.rb', 'config/initializers/hyalin.rb'
      end

      def copy_locales_files
        directory 'config/locales'
      end

      def copy_view_files
        unless self.config[:no_views]
          directory 'app/views/hyalin/messages'
        end
      end

      private
      def self.add_templates_path!
        current_directory = File.dirname(__FILE__)
        source_paths << File.join(current_directory, 'templates')
        source_paths << File.expand_path(File.join current_directory, '..', '..', '..')
      end

      add_templates_path!
    end
  end
end
