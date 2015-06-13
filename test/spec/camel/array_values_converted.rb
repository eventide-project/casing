require_relative '../spec_init'

describe "Array of values converted" do
  values = [
    'underscore_value',
    'PascalValue',
    'camelValue',
    'Separate words',
    'some words'
  ]

  camel_values = Casing::Camel.! values, convert_values: true

  specify "Underscore case value is converted to camel case" do
    assert(camel_values[0] == 'underscoreValue')
  end

  specify "Pascal case value is converted to camel case" do
    assert(camel_values[1] == 'pascalValue')
  end

  specify "Camel case value remains camel cased" do
    assert(camel_values[2] == 'camelValue')
  end

  specify "Separate words are converted" do
    assert(camel_values[3] == 'separate words')
  end

  specify "Camel cased separate words remain camel cased" do
    assert(camel_values[4] == 'some words')
  end
end
