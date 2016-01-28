require_relative 'spec_init'

context "Array" do
  values = Casing::Controls::Array.example
  __logger.data "\nInput\n- - -\n#{values.pretty_inspect}"

  ['Camel', 'Underscore'].each do |casing|
    context "Array of Values" do
      converter = Casing.const_get(casing)
      converted_values = converter.(values, include_values: true)

      __logger.data "\n#{casing}: Values\n- - -\n#{converted_values.pretty_inspect}"

      context "Converted to Array of #{casing} Case Values" do
        converted_values.each do |value|
          test value do
            assert(converter.case?(value, include_values: true))
          end
        end
      end
    end
  end
end
