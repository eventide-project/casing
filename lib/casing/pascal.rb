module Casing
  module Pascal
    def self.call(val, convert_values: nil)
      case val
        when ::Hash
          raise "Hash cannot be converted to pascal case"

        when ::Array
          raise "Array cannot be converted to pascal case"

        when ::String
          String.(val, convert_values: convert_values)

        when ::Symbol
          String.(val, convert_values: convert_values)

        else
          val
      end
    end
    class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
  end
end
