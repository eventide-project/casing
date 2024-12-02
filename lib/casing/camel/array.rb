module Casing
  class Camel
    module Array
      def self.call(val, include_values: nil, symbol_to_string: nil)
        include_values = include_values.nil? ? false : include_values
        symbol_to_string ||= false

        val.map do |v|
          Casing::Camel.(v, include_values: include_values, symbol_to_string: symbol_to_string)
        end
      end
    end
  end
end
