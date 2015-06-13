require_relative '../spec_init'

describe "Array of values not converted" do
  values = [
    'underscore_value',
    'PascalValue',
    'camelValue',
    'Separate words',
    'some words'
  ]

  camel_values = Casing::Camel.! values, convert_values: false

  specify "Values remain unchanged" do
    camel_values.each_with_index do |v, i|
      assert(v == values[i])
    end
  end
end
