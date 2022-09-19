# frozen_string_literal: true

require_relative 'importers/json_import'
require_relative 'importers/yaml_import'

# lib/import.rb
# Main class to initiate Data import from data files
class Import
  attr_accessor :file

  def get_data
    importer_class.get_data(file)
  end

  def importer_class
    begin
      Object.const_get("#{file_ext.capitalize}Import")
    rescue StandardError
      puts "\nInvalid Importer.\n Currently we import JSON or YAML files only !!"
      exit(0)
    end
  end

  def file_ext
    file.split('.').last
  end
end
