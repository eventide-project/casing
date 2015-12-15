module Casing
  class Camel
    module Hash
      def self.call(val, values: nil, convert_symbols: nil)
        values = values.nil? ? false : values
        convert_symbols ||= false

        ::Hash[val.map { |k, v| [Casing::Camel.(k, values: true, convert_symbols: convert_symbols), Casing::Camel.(v, values: values, convert_symbols: convert_symbols)] }]
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
