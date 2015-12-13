require_relative 'spec_init'

describe "Hash Keys and Values" do
  hash = Casing::Controls::Hash.example
  __logger.data "\nInput\n- - -\n#{hash.pretty_inspect}"

  ['Camel', 'Underscore'].each do |casing|
    context "Convert to #{casing} Case" do
      specify "Converts keys and values to #{casing.downcase} case strings" do
        converter = Casing.const_get(casing)
        camel_hash = converter.(hash, values: true)

        __logger.data "\n#{casing}: Keys\n- - -\n#{camel_hash.pretty_inspect}"

        assert(converter.case?(camel_hash, values: true))
      end
    end
  end
end
