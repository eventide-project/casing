require_relative '../spec_init'

describe "Array of Values Converted to Camel Case" do
  values = Casing::Controls::Array.example
  camel_values = Casing::Camel.(values, convert_values: true)

  __logger.data "\nCamel: Values\n- - -\n#{camel_values.pretty_inspect}"
  __logger.data "\nInput\n- - -\n#{values.pretty_inspect}"

  specify "Underscore case value is converted to camel case" do
    assert(camel_values[0] == 'underscoreValue')
  end

  specify "Pascal case value is converted to camel case" do
    assert(camel_values[1] == 'pascalValue')
  end

  specify "Camel case value remains camel cased" do
    assert(camel_values[2] == 'camelValue')
  end

  specify "Separate words are converted to lower case" do
    assert(camel_values[3] == 'separate words')
  end

  specify "Lower case separate words remain lower case" do
    assert(camel_values[4] == 'some words')
  end
end
