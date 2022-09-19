# frozen_string_literal: true

require 'yaml'
require_relative '../common/render'

# lib/importers/yaml_import.rb
# Class to import YAML data from file
class YamlImport

  extend Common::Render

  class << self
    def get_data(file)
      yaml_data = YAML.load_file(file)
      display_data(yaml_data, %w[name tags twitter])
    end
  end
end
