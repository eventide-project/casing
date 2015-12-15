module Casing
  class Camel
    module Hash
      def self.call(val, include_values: nil, convert_symbols: nil)
        include_values = include_values.nil? ? false : include_values
        convert_symbols ||= false

        ::Hash[val.map { |k, v| [Casing::Camel.(k, include_values: true, convert_symbols: convert_symbols), Casing::Camel.(v, include_values: include_values, convert_symbols: convert_symbols)] }]
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
