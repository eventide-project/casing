module Casing
  module Underscore
    module String
      def self.!(val, convert_values: nil)
        convert_values = convert_values.nil? ? true : convert_values

        return val unless convert_values

        val
          .to_s
          .gsub(/::/, '/')
          .gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
          .gsub(/([a-z\d])([A-Z])/, '\1_\2')
          .tr('-', '_')
          .downcase
      end
    end
  end
end
