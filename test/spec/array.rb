require_relative 'spec_init'

describe "Array" do
  values = Casing::Controls::Array.example
  __logger.data "\nInput\n- - -\n#{values.pretty_inspect}"

  ['Camel', 'Underscore'].each do |casing|
    describe "Array of Values" do
      converter = Casing.const_get(casing)
      converted_values = converter.(values, values: true)

      __logger.data "\n#{casing}: Values\n- - -\n#{converted_values.pretty_inspect}"

      context "Converted to Array of #{casing} Case Values" do
        converted_values.each do |value|
          specify value do
            assert(converter.case?(value, values: true))
          end
        end
      end
    end
  end
end
