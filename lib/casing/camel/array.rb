module Casing
  module Camel
    module Array
      def self.!(val, convert_values: nil)
        convert_values = convert_values.nil? ? false : convert_values

        val.map do |v|
          Casing::Camel.!(v, convert_values: convert_values)
        end
      end
    end
  end
end
