require_relative 'spec_init'

['Camel', 'Underscore', 'Pascal'].each do |casing|
  describe "String Converted to #{casing.downcase} Case" do
    converter = Casing.const_get(casing)

    it "Converts from under_score to #{casing.downcase} case" do
      input = Casing::Controls::String::Underscore.example
      converted = converter.(input)

      assert(converter.case?(converted))
    end

    it "Converts from PascalCase to #{casing.downcase} case" do
      input = Casing::Controls::String::Pascal.example
      converted = converter.(input)

      assert(converter.case?(converted))
    end

    it "Converts from CamelCase to #{casing.downcase} case" do
      input = Casing::Controls::String::Camel.example
      converted = converter.(input)

      assert(converter.case?(converted))
    end

    it "Converts symbols to strings" do
      input = Casing::Controls::String::Symbol.example
      converted = Casing::Camel.(input)

      assert(converter.case?(converted))
    end
  end
end
