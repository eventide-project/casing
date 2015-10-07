module Casing
  module Underscore
    def self.call(val, convert_values: nil)
      case val
        when ::Hash
          Hash.(val, convert_values: convert_values)

        when ::Array
          Array.(val, convert_values: convert_values)

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
