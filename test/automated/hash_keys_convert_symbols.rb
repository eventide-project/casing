require_relative 'automated_init'

context "Hash Keys" do
  context "Symbol inputs" do
    hash = Casing::Controls::Hash::Symbol.example

    ['Camel', 'Underscore'].each do |casing|
      test "Converts keys to #{casing.downcase} case strings" do
        converter = Casing.const_get(casing)
        converted_hash = converter.(hash, symbol_to_string: true)

        assert(converter.case?(converted_hash, symbol_to_string: true))
      end
    end
  end
end
