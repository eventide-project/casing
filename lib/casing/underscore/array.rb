module Casing
  module Underscore
    module Array
      def self.!(val, convert_values: nil)
        convert_values = convert_values.nil? ? false : convert_values

        val.map do |v|
          Casing::Underscore.!(v, convert_values: convert_values)
        end
      end
    end
  end
end
