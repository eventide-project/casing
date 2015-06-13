module Casing
  module Camel
    module String
      def self.!(val, convert_values: nil)
        convert_values = convert_values.nil? ? true : convert_values

        return val unless convert_values

        val
          .to_s
          .chars.first.downcase +
            Pascal::String.!(val)[1..-1]
      end
    end
  end
end
