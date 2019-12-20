module Casing
  class Underscore
    module String
      def self.call(val, include_values: nil, symbol_to_string: nil)
        include_values = include_values.nil? ? true : include_values
        symbol_to_string ||= false

        return val unless include_values
        return val if val.length == 0

        cached_val = cache(symbol_to_string)[val]
        return cached_val if not cached_val.nil?

        sym = val.is_a?(Symbol)

        converted = val
          .to_s
          .gsub(/::/, '/')
          .gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
          .gsub(/([a-z\d])([A-Z])/, '\1_\2')
          .tr('-', '_')
          .downcase

        if !symbol_to_string && sym
          converted = converted.to_sym
        end

        cache(symbol_to_string)[val] = converted

        converted
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]

      def self.cache(symbol_to_string)
        if symbol_to_string
          return string_cache
        else
          return symbol_cache
        end
      end

      def self.string_cache
        @string_cache ||= ::Hash.new
      end

      def self.symbol_cache
        @symbol_cache ||= ::Hash.new
      end
    end
  end
end
