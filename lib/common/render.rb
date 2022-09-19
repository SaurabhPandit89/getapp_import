# frozen_string_literal: true

# lib/common/render.rb
# Module to keep common methods
module Common
  module Render
    def display_data(data, attr_ary)
      d_str = []
      data.each_with_index do |d, i|
        d_str[i] = ["\nimporting: "]
        attr_ary.each do |aa|
          next unless d.has_key?(aa)
          
          d_str[i] << "#{aa.capitalize}: #{d[aa]}; "
        end
      end
      d_str.join
    end
  end
end
