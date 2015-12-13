require_relative '../spec_init'

describe "Array of Values" do
  values = Casing::Controls::Array.not_camel_case
  camel_values = Casing::Camel.(values, values: false)

  __logger.data "\nNot Camel: Values\n- - -\n#{camel_values.pretty_inspect}"
  __logger.data "\nInput\n- - -\n#{values.pretty_inspect}"

  context "Not Converted to Array of Camel Case Values" do
    camel_values.each do |camel_value|
      specify camel_value do
        refute(Casing::Camel.case?(camel_value, assure_values: true))
      end
    end
  end
end
