require_relative '../spec_init'

describe "Array of Values" do
  values = Casing::Controls::Array.not_underscore_case
  underscore_values = Casing::Underscore.(values, convert_values: false)

  __logger.data "\nUnderscore: Values\n- - -\n#{underscore_values.pretty_inspect}"
  __logger.data "\nInput\n- - -\n#{values.pretty_inspect}"

  context "Not Converted to Array of Camel Case Values" do
    underscore_values.each do |underscore_value|
      specify underscore_value do
        refute(Casing::Underscore.case?(underscore_value, assure_values: true))
      end
    end
  end
end
