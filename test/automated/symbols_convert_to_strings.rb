require_relative 'bench_init'

['Camel', 'Underscore', 'Pascal'].each do |casing|
  context "Symbols Converted to #{casing.downcase} Case Strings" do
    converter = Casing.const_get(casing)

    test "Under score to #{casing.downcase} case" do
      input = Casing::Controls::String::Underscore.example.to_sym
      converted = converter.(input, symbol_to_string: true)

      assert(converter.case?(converted, symbol_to_string: true))
      assert(converted.is_a?(String))
    end

    test "Pascal case to #{casing.downcase} case" do
      input = Casing::Controls::String::Pascal.example.to_sym
      converted = converter.(input, symbol_to_string: true)

      assert(converter.case?(converted, symbol_to_string: true))
      assert(converted.is_a?(String))
    end

    test "Camel case to #{casing.downcase} case" do
      input = Casing::Controls::String::Camel.example.to_sym
      converted = converter.(input, symbol_to_string: true)

      assert(converter.case?(converted, symbol_to_string: true))
      assert(converted.is_a?(String))
    end
  end
end
