require_relative '../spec_init'

describe "Array of Values" do
  values = Casing::Controls::Array.example
  camel_values = Casing::Camel.(values, values: true)

  __logger.data "\nCamel: Values\n- - -\n#{camel_values.pretty_inspect}"
  __logger.data "\nInput\n- - -\n#{values.pretty_inspect}"

  context "Converted to Array of Camel Case Values" do
    camel_values.each do |camel_value|
      specify camel_value do
        assert(Casing::Camel.case?(camel_value, assure_values: true))
      end
    end
  end
end
