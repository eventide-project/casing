module Casing
  class Camel
    module String
      def self.call(val, include_values: nil, convert_symbols: nil)
        include_values = include_values.nil? ? true : include_values
        convert_symbols ||= false

        return val unless include_values

        sym = val.is_a?(Symbol)

        converted = val
          .to_s
          .chars.first.downcase +
            Pascal::String.(val)[1..-1]

        if !convert_symbols && sym
          converted = converted.to_sym
        end

        converted
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
