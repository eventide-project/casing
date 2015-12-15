module Casing
  class Camel
    module Array
      def self.call(val, values: nil, convert_symbols: nil)
        values = values.nil? ? false : values
        convert_symbols ||= false

        val.map do |v|
          Casing::Camel.(v, values: values, convert_symbols: convert_symbols)
        end
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
