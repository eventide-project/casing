require_relative 'bench_init'

context "Hash Keys" do
  context "Symbol inputs" do
    hash = Casing::Controls::Hash::Symbol.example
    __logger.data "\nInput\n- - -\n#{hash.pretty_inspect}"

    ['Camel', 'Underscore'].each do |casing|
      test "Converts keys to #{casing.downcase} case strings" do
        converter = Casing.const_get(casing)
        converted_hash = converter.(hash, symbol_to_string: true)

        __logger.data "\n#{casing}: Keys\n- - -\n#{converted_hash.pretty_inspect}"

        assert(converter.case?(converted_hash, symbol_to_string: true))
      end
    end
  end
end
