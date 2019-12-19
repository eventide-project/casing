require_relative 'bench_init'

context "Hash Keys and Values" do
  context "Symbol inputs" do
    hash = Casing::Controls::Hash::Symbol.example

    ['Camel', 'Underscore'].each do |casing|
      context "Convert to #{casing} Case" do
        test "Converts keys and values to #{casing.downcase} case strings" do
          converter = Casing.const_get(casing)
          converted_hash = converter.(hash, include_values: true, symbol_to_string: true)

          assert(converter.case?(converted_hash, include_values: true, symbol_to_string: true))
        end
      end
    end
  end
end
