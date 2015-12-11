module Casing
  module Controls
    module Array
      def self.example
        [
          'underscore_value',
          'PascalValue',
          'camelValue',
          'Separate words',
          'some words'
        ]
      end

      def self.not_camel_case
        example.delete_if { |e| Casing::Camel.case?(e) }
      end

      def self.not_underscore_case
        example.delete_if { |e| Casing::Underscore.case?(e) }
      end
    end
  end
end
