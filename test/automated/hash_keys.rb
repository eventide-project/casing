require_relative 'automated_init'

context "Hash Keys" do
  hash = Casing::Controls::Hash.example

  # ['Camel', 'Underscore'].each do |casing|
  ['Camel'].each do |casing|
    context "Convert to #{casing} Case" do
      test "Converts keys to #{casing.downcase} case strings" do
        converter = Casing.const_get(casing)
        converted_hash = converter.(hash)

        assert(converter.case?(converted_hash))
      end
    end
  end
end
