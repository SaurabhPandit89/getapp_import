# frozen_string_literal: true

require_relative '../lib/import'

# spec/import_spec.rb
describe 'Import' do
  describe '.get_file_ext' do
    context 'for given JSON/YAML file' do
      before do
        @import = Import.new
      end

      it 'return json file extension' do
        @import.file = 'feed-products/softareadvice.json'
        expect(@import.file_ext).to eql('json')
      end

      it 'return yaml file extension' do
        @import.file = 'feed-products/capterra.yaml'
        expect(@import.file_ext).to eql('yaml')
      end
    end
  end

  describe '.importer_class' do
    context 'for given JSON/YAML file' do
      before do
        @import = Import.new
      end

      it 'return JsonImport class for JSON file' do
        @import.file = 'feed-products/softareadvice.json'
        expect(@import.importer_class).is_a?(JsonImport)
      end

      it 'return YamlImport class for YAML file' do
        @import.file = 'feed-products/capterra.yaml'
        expect(@import.importer_class).is_a?(YamlImport)
      end

      it 'return error message when incorrect File is given' do
        @import.file = 'feed-products/capterra.txt'
        expect(@import.importer_class).to eql("Invalid Importer.\n Currently we import JSON or YAML files only !!")
      end
    end
  end
end