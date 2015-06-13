module Casing
  module Pascal
    def self.!(val, convert_values: nil)
      case val
        when ::Hash
          raise "Hash cannot be converted to pascal case"

        when ::Array
          raise "Array cannot be converted to pascal case"

        when ::String
          String.!(val, convert_values: convert_values)

        when ::Symbol
          String.!(val, convert_values: convert_values)

        else
          val
      end
    end
  end
end
