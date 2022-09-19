# frozen_string_literal: true

require 'json'
require 'yaml'
require_relative '../../lib/common/render'

class ToTestModule
  extend Common::Render
end
# spec/common/render_spec.rb
describe 'Render' do
  describe '.display_data' do
    context 'for given JSON/YAML file' do
      it 'to display json file data' do
        data = JSON.parse(File.open(File.expand_path('../../../feed-products/softwareadvice.json', __FILE__)).read)
        attr_ary = %w[title categories twitter]
        expect(ToTestModule.display_data(data['products'], attr_ary)).to eql("\nimporting: Title: Freshdesk; Categories: [\"Customer Service\", \"Call Center\"]; Twitter: @freshdesk; \nimporting: Title: Zoho; Categories: [\"CRM\", \"Sales Management\"]; ")
      end

      it 'to display yaml file data' do
        data = YAML.load_file(File.expand_path('../../../feed-products/capterra.yaml', __FILE__))
        attr_ary = %w[name tags twitter]
        expect(ToTestModule.display_data(data, attr_ary)).to eql("\nimporting: Name: GitHub; Tags: Bugs & Issue Tracking,Development Tools; Twitter: github; \nimporting: Name: Slack; Tags: Instant Messaging & Chat,Web Collaboration,Productivity; Twitter: slackhq; \nimporting: Name: JIRA Software; Tags: Project Management,Project Collaboration,Development Tools; Twitter: jira; ")
      end
    end
  end
end
