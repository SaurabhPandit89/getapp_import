# frozen_string_literal: true

require 'json'
require_relative '../common/render'

# lib/importers/json_import.rb
# Class to import JSON data from file
class JsonImport

  extend Common::Render

  class << self
    def get_data(file)
      json_data = JSON.parse(File.open(file).read)
      display_data(json_data['products'], %w[title categories twitter])
    end
  end
end
