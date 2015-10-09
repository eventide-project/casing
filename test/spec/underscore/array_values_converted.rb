require_relative '../spec_init'

describe "Array of Values Converted to Underscore Case" do
  values = [
    'underscore_value',
    'PascalValue',
    'camelValue',
    'Separate words',
    'some words'
  ]

  underscore_values = Casing::Underscore.(values, convert_values: true)

  specify "Underscore case remains underscore cased" do
    assert(underscore_values[0] == 'underscore_value')
  end

  specify "Pascal case value is converted to underscore case" do
    assert(underscore_values[1] == 'pascal_value')
  end

  specify "Camel case is converted to underscore case" do
    assert(underscore_values[2] == 'camel_value')
  end

  specify "Separate words are converted to lower case" do
    assert(underscore_values[3] == 'separate words')
  end

  specify "Lower case separate words remain lower case" do
    assert(underscore_values[4] == 'some words')
  end
end
