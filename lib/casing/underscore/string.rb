module Casing
  class Underscore
    module String
      def self.call(val, include_values: nil, convert_symbols: nil)
        include_values = include_values.nil? ? true : include_values
        convert_symbols ||= false

        return val unless include_values

        sym = val.is_a?(Symbol)

        converted = val
          .to_s
          .gsub(/::/, '/')
          .gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
          .gsub(/([a-z\d])([A-Z])/, '\1_\2')
          .tr('-', '_')
          .downcase

        if !convert_symbols && sym
          converted = converted.to_sym
        end

        converted
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
