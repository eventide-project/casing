require_relative 'spec_init'

describe "Hash Keys and Values" do
  context "Symbol inputs" do
    hash = Casing::Controls::Hash::Symbol.example
    __logger.data "\nInput\n- - -\n#{hash.pretty_inspect}"

    ['Camel', 'Underscore'].each do |casing|
      context "Convert to #{casing} Case and Preserve Symbols" do
        specify "Converts keys and values to #{casing.downcase} case strings" do
          converter = Casing.const_get(casing)
          converted_hash = converter.(hash, values: true, preserve_symbols: true)

          __logger.data "\n#{casing}: Keys and Values\n- - -\n#{converted_hash.pretty_inspect}"

          assert(converter.case?(converted_hash, values: true, symbols: true))
        end
      end
    end
  end

  context "String inputs" do
    hash = Casing::Controls::Hash::String.example
    __logger.data "\nInput\n- - -\n#{hash.pretty_inspect}"

    ['Camel', 'Underscore'].each do |casing|
      context "Convert to #{casing} Case and Preserve Symbols" do
        specify "Converts keys and values to #{casing.downcase} case strings" do
          converter = Casing.const_get(casing)
          converted_hash = converter.(hash, values: true, preserve_symbols: true)

          __logger.data "\n#{casing}: Keys and Values\n- - -\n#{converted_hash.pretty_inspect}"

          refute(converted_hash.any? {|k, v| k.is_a?(Symbol) || v.is_a?(Symbol) })
        end
      end
    end
  end
end
