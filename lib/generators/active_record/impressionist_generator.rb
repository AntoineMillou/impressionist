module ActiveRecord
  module Generators
    class ImpressionistGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.join(File.dirname(__FILE__), 'templates')

      # FIX, why is this implementing rails behaviour?
      def self.next_migration_number(dirname)
        sleep 1
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end

      def create_migration_file
        migration_template 'create_impressions_table.rb.erb', 'db/migrate/create_impressions_table.rb'
      end
    end
  end
end
