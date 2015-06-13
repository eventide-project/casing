module Casing
  module Camel
    def self.!(val, convert_values: nil)
      case val
        when ::Hash
          Hash.!(val, convert_values: convert_values.nil? ? false : convert_values)

        when ::Array
          Array.!(val, convert_values: convert_values.nil? ? false : convert_values)

        when ::String
          String.!(val, convert_values: convert_values.nil? ? true : convert_values)

        when ::Symbol
          String.!(val, convert_values: convert_values.nil? ? true : convert_values)

        else
          val
      end
    end
  end
end
