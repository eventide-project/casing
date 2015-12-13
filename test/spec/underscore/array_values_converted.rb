require_relative '../spec_init'

describe "Array of Values" do
  values = Casing::Controls::Array.example
  underscore_values = Casing::Underscore.(values, convert_values: true)

  __logger.data "\nUnderscore: Values\n- - -\n#{underscore_values.pretty_inspect}"
  __logger.data "\nInput\n- - -\n#{values.pretty_inspect}"

  context "Converted to Array of Underscore Case Values" do
    underscore_values.each do |underscore_value|
      specify underscore_value do
        assert(Casing::Underscore.case?(underscore_value, assure_values: true))
      end
    end
  end
end
