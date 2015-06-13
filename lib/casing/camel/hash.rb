module Casing
  module Camel
    module Hash
      def self.!(val, convert_values: false)
        ::Hash[val.map { |k, v| [Casing::Camel.!(k, convert_values: true), Casing::Camel.!(v, convert_values: convert_values)] }]
      end
    end
  end
end
