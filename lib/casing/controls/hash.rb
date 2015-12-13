module Casing
  module Controls
    module Hash
      def self.example
        hash = {}

        hash.merge! Symbol.example
        hash.merge! String.example
        hash.merge! Nested::Hash.example
        hash.merge! Nested::Array.example

        hash
      end

      module Symbol
        def self.example
          {
            :underscore_symbol_key => :underscore_symbol_value,
            :camelSymbolKey => :camelSymbolValue,
            :PascalSymbolKey => :PascalSymbolValue
          }
        end
      end

      module String
        def self.example
          {
            'underscore_string_key' => 'underscore_string_value',
            'camelStringKey' => 'camelStringValue',
            'PascalStringKey' => 'PascalStringValue'
          }
        end
      end

      module Nested
        module Hash
          def self.example
            hash = {}
            hash.merge! Symbol.example
            hash.merge! String.example

            { :nested_hash => hash }
          end
        end

        module Array
          def self.example
            array = [
              { :array_nested_hash_a => :array_nested_hash_value_a },
              { :array_nested_hash_b => :array_nested_hash_value_b }
            ]

            { :nested_array => array }
          end
        end
      end
    end
  end
end
