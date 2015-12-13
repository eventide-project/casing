module Casing
  module Controls
    module Hash
      # def self.example
      #   {
      #     symbol_key: 'symbol value',
      #     'text_key' => 'text value',
      #     camelKey: 'camel value',
      #     :PascalKey => 'pascal value',
      #     nested_hash: {
      #       nested_symbol_key: 'nested symbol value',
      #       'nested_text_key' => 'nested text value',
      #       nestedCamelKey: 'nested camel value',
      #       :NestedPascalKey => 'nested pascal value'
      #     },
      #     nested_array: [
      #       { array_nested_hash_a: 'nested value a' },
      #       { array_nested_hash_b: 'nested value b' }
      #     ]
      #   }
      # end

      def self.example
        {
          symbol_key: :symbol_value,
          'text_key' => 'text value',
          camelKey: 'camelValue',
          :PascalKey => 'pascal value',
          nested_hash: {
            nested_symbol_key: 'nested symbol value',
            'nested_text_key' => 'nested text value',
            nestedCamelKey: 'nested camel value',
            :NestedPascalKey => 'nested pascal value'
          },
          nested_array: [
            { array_nested_hash_a: 'nested value a' },
            { array_nested_hash_b: 'nested value b' }
          ]
        }
      end

    end
  end
end
