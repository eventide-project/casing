require_relative 'spec_init'

describe "Hash Keys" do
  context "Symbol inputs" do
    hash = Casing::Controls::Hash::Symbol.example
    __logger.data "\nInput\n- - -\n#{hash.pretty_inspect}"

    ['Camel', 'Underscore'].each do |casing|
      specify "Converts keys to #{casing.downcase} case strings" do
        converter = Casing.const_get(casing)
        converted_hash = converter.(hash, convert_symbols: true)

        __logger.data "\n#{casing}: Keys\n- - -\n#{converted_hash.pretty_inspect}"

        assert(converter.case?(converted_hash, converted_symbols: true))
      end
    end
  end
end
