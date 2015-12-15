require_relative 'spec_init'

['Camel', 'Underscore', 'Pascal'].each do |casing|
  describe "Symbols Converted to #{casing.downcase} Case Strings" do
    converter = Casing.const_get(casing)

    specify "Under score to #{casing.downcase} case" do
      input = Casing::Controls::String::Underscore.example.to_sym
      converted = converter.(input, symbol_to_string: true)

      __logger.data "Symbols are converted to strings (#{casing}): #{input.inspect} -> #{converted.inspect}"

      assert(converter.case?(converted, symbol_to_string: true))
      assert(converted.is_a?(String))
    end

    specify "Pascal case to #{casing.downcase} case" do
      input = Casing::Controls::String::Pascal.example.to_sym
      converted = converter.(input, symbol_to_string: true)

      __logger.data "Symbols are converted to strings (#{casing}): #{input.inspect} -> #{converted.inspect}"

      assert(converter.case?(converted, symbol_to_string: true))
      assert(converted.is_a?(String))
    end

    specify "Camel case to #{casing.downcase} case" do
      input = Casing::Controls::String::Camel.example.to_sym
      converted = converter.(input, symbol_to_string: true)

      __logger.data "Symbols are converted to strings (#{casing}): #{input.inspect} -> #{converted.inspect}"

      assert(converter.case?(converted, symbol_to_string: true))
      assert(converted.is_a?(String))
    end
  end
end
