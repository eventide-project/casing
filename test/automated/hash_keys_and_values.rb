require_relative 'bench_init'

context "Hash Keys and Values" do
  hash = Casing::Controls::Hash.example

  ['Camel', 'Underscore'].each do |casing|
    context "Convert to #{casing} Case" do
      test "Converts keys to #{casing.downcase} case strings" do
        converter = Casing.const_get(casing)
        converted_hash = converter.(hash, include_values: true)

        assert(converter.case?(converted_hash, include_values: true))
      end
    end
  end
end
