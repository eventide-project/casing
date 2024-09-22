require_relative 'automated_init'

['Camel', 'Underscore', 'Pascal'].each do |casing|
  context "String Converted to #{casing.downcase} Case" do
    converter = Casing.const_get(casing)

    test "Converts from under score to #{casing.downcase} case" do
      input = Casing::Controls::String::Underscore.example.to_sym
      converted = converter.(input)

      assert(converter.case?(converted))
    end

    test "Converts from pascal case to #{casing.downcase} case" do
      input = Casing::Controls::String::Pascal.example.to_sym
      converted = converter.(input)

      assert(converter.case?(converted))
    end

    test "Converts from camel case to #{casing.downcase} case" do
      input = Casing::Controls::String::Camel.example.to_sym
      converted = converter.(input)

      assert(converter.case?(converted))
    end

    context "Receives an empty string" do
      converted = converter.('')

      test "Returns an empty string" do
        assert(converted == '')
      end
    end
  end
end
