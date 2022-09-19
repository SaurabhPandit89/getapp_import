# frozen_string_literal: true

require_relative 'lib/import'

# getapp_import.rb
import = Import.new
import.file = ARGV[0]
puts import.get_data
