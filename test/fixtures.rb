module Fixtures
  def self.hash
    {
      symbol_key: 'symbol value',
      'text_key' => 'text value',
      camelKey: 'camel value',
      :PascalKey => 'pascal value',
      nested_hash: {
        nested_symbol_key: 'nested symbol value',
        'nested_text_key' => 'nested text value',
        nestedCamelKey: 'nested camel value',
        :NestedPascalKey => 'nested pascal value'
      },
      nested_array: [
        { array_nested_hash_1: 'nested value 1' },
        { array_nested_hash_2: 'nested value 2' }
      ]
    }
  end

  def self.hash
    {
      symbol_key: 'symbol value',
      'text_key' => 'text value',
      camelKey: 'camel value',
      :PascalKey => 'pascal value',
      nested_hash: {
        nested_symbol_key: 'nested symbol value',
        'nested_text_key' => 'nested text value',
        nestedCamelKey: 'nested camel value',
        :NestedPascalKey => 'nested pascal value'
      },
      nested_array: [
        { array_nested_hash_1: 'nested value 1' },
        { array_nested_hash_2: 'nested value 2' }
      ]
    }
  end
end
