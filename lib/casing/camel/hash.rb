module Casing
  module Camel
    module Hash
      def self.!(val, convert_values: nil)
        convert_values = convert_values.nil? ? false : convert_values

        ::Hash[val.map { |k, v| [Casing::Camel.!(k, convert_values: true), Casing::Camel.!(v, convert_values: convert_values)] }]
      end
    end
  end
end
