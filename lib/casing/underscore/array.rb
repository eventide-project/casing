module Casing
  class Underscore
    module Array
      def self.call(val, include_values: nil, convert_symbols: nil)
        include_values = include_values.nil? ? false : include_values
        convert_symbols ||= false

        val.map do |v|
          Casing::Underscore.(v, include_values: include_values, convert_symbols: convert_symbols)
        end
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
