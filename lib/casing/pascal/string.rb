module Casing
  class Pascal
    module String
      def self.call(val, values: nil, preserve_symbols: nil)
        values = values.nil? ? true : values
        preserve_symbols ||= false

        return val unless values

        sym = val.is_a?(Symbol)

        converted = val
          .to_s
          .gsub(/\/(.?)/) { "::" + $1.upcase }
          .gsub(/(^|_)(.)/) { $2.upcase }

        if preserve_symbols && sym
          converted = converted.to_sym
        end

        converted
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
