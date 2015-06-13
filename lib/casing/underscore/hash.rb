module Casing
  module Underscore
    module Hash
      def self.!(val, convert_values: nil)
        convert_values = convert_values.nil? ? false : convert_values

        ::Hash[val.map { |k, v| [Casing::Underscore.!(k, convert_values: true), Casing::Underscore.!(v, convert_values: convert_values)] }]
      end
    end
  end
end
