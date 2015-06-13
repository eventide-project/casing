require_relative '../spec_init'

describe "Array of Values not Converted to Underscore Case" do
  values = [
    'underscore_value',
    'PascalValue',
    'camelValue',
    'Separate words',
    'some words'
  ]

  underscore_values = Casing::Underscore.! values, convert_values: false

  specify "Values remain unchanged" do
    underscore_values.each_with_index do |v, i|
      assert(v == values[i])
    end
  end
end
