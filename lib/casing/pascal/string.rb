module Casing
  class Pascal
    module String
      def self.call(val, convert_values: nil)
        convert_values = convert_values.nil? ? true : convert_values

        return val unless convert_values

        val
          .to_s
          .gsub(/\/(.?)/) { "::" + $1.upcase }
          .gsub(/(^|_)(.)/) { $2.upcase }
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
