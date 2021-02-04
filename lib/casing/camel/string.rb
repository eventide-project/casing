module Casing
  class Camel
    module String
      def self.call(val, include_values: nil, symbol_to_string: nil)
        include_values = include_values.nil? ? true : include_values
        symbol_to_string ||= false

        return val unless include_values
        return val if val.length == 0

        sym = val.is_a?(Symbol)

        val = val.to_s

        converted = val
          .chars.first.downcase +
            Pascal::String.(val)[1..-1]

        if !symbol_to_string && sym
          converted = converted.to_sym
        end

        converted
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
