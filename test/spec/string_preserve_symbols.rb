require_relative 'spec_init'

['Camel', 'Underscore', 'Pascal'].each do |casing|
  describe "String Converted to #{casing.downcase} Case" do
    converter = Casing.const_get(casing)

    it "Converts from under score to #{casing.downcase} case" do
      input = Casing::Controls::String::Underscore.example.to_sym
      converted = converter.(input, preserve_symbols: true)

      __logger.data "Underscore to #{casing}: #{input.inspect} -> #{converted.inspect}"

      assert(converter.case?(converted))
      assert(converted.is_a? Symbol)
    end

    it "Converts from pascal case to #{casing.downcase} case" do
      input = Casing::Controls::String::Pascal.example.to_sym
      converted = converter.(input, preserve_symbols: true)

      __logger.data "Pascal to #{casing}: #{input.inspect} -> #{converted.inspect}"

      assert(converter.case?(converted))
      assert(converted.is_a? Symbol)
    end

    it "Converts from camel case to #{casing.downcase} case" do
      input = Casing::Controls::String::Camel.example.to_sym
      converted = converter.(input, preserve_symbols: true)

      __logger.data "Camel to #{casing}: #{input.inspect} -> #{converted.inspect}"

      assert(converter.case?(converted))
      assert(converted.is_a? Symbol)
    end
  end
end
