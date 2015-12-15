require_relative 'spec_init'

['Camel', 'Underscore', 'Pascal'].each do |casing|
  describe "String not Converted to #{casing.downcase} Case" do
    converter = Casing.const_get(casing)

    it "Does not convert from under score to #{casing.downcase} case" do
      input = Casing::Controls::String::Underscore.example
      converted = converter.(input, values: false)

      assert(converted == input)
    end

    it "Does not convert from pascal case to #{casing.downcase} case" do
      input = Casing::Controls::String::Pascal.example
      converted = converter.(input, values: false)

      assert(converted == input)
    end

    it "Does not convert from camel case to #{casing.downcase} case" do
      input = Casing::Controls::String::Camel.example
      converted = converter.(input, values: false)

      assert(converted == input)
    end

    it "Does not convert symbols to strings" do
      input = Casing::Controls::String::Symbol.example
      converted = converter.(input, values: false)

      assert(converted == input)
    end
  end
end
