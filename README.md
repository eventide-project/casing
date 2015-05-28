# casing

Convert the case of strings, symbols, and hash keys, including camelCase, PascalCase, and underscore_case

# Examples

## Convert a Hash's Keys to Camel Case

Useful for converting Ruby names to JavaScript style naming in preparation for serializing a Hash instance to a JSON string

```ruby
h = {
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

camel_hash = Casing::Hash::Camel.! h

# => {
  "symbolKey" => "symbol value",
  "textKey" => "text value",
  "camelKey" => "camel value",
  "pascalKey" => "pascal value",
  "nestedHash" => {
    "nestedSymbolKey" => "nested symbol value",
    "nestedTextKey" => "nested text value",
    "nestedCamelKey" => "nested camel value",
    "nestedPascalKey" => "nested pascal value"
  },
  "nestedArray" => [
    {"arrayNestedHash1" => "nested value 1"},
    {"arrayNestedHash2" => "nested value 2"}
  ]
}
```

## Convert a Hash's Keys to Underscore Case

Useful for converting JavaScript names to Ruby style naming after deserializing a JSON string to a Ruby Hash.

```ruby
h = {
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

camel_hash = Casing::Hash::Underscore.! h

# => {
  "symbol_key" => "symbol value",
  "text_key" => "text value",
  "camel_key" => "camel value",
  "pascal_key" => "pascal value",
  "nested_hash"=> {
    "nested_symbol_key" => "nested symbol value",
    "nested_text_key" => "nested text value",
    "nested_camel_key" => "nested camel value",
    "nested_pascal_key" => "nested pascal value"},
  "nested_array"=> [
    {"array_nested_hash_1" => "nested value 1"},
    {"array_nested_hash_2" => "nested value 2"}
  ]
}
```

## License

The `casing` library is released under the [MIT License](https://github.com/obsidian-btc/casing/blob/master/MIT-License.txt).
