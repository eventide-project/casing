module Casing
  class Underscore
    module Hash
      def self.call(val, include_values: nil, symbol_to_string: nil)
        include_values = include_values.nil? ? false : include_values
        symbol_to_string ||= false

        ::Hash[val.map { |k, v| [Casing::Underscore.(k, include_values: true, symbol_to_string: symbol_to_string), Casing::Underscore.(v, include_values: include_values, symbol_to_string: symbol_to_string)] }]
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
