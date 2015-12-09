require_relative '../spec_init'

describe "Array of Values not Converted to Camel Case" do
  values = Casing::Controls::Array.example
  camel_values = Casing::Camel.(values, convert_values: false)

  __logger.data "\nCamel: Values\n- - -\n#{camel_values.pretty_inspect}"
  __logger.data "\nInput\n- - -\n#{values.pretty_inspect}"

  specify "Values remain unchanged" do
    camel_values.each_with_index do |v, i|
      assert(v == values[i])
    end
  end
end
