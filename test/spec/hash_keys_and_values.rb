require_relative 'spec_init'

describe "Hash Keys and Values" do
  hash = Casing::Controls::Hash.example
  __logger.data "\nInput\n- - -\n#{hash.pretty_inspect}"

  ['Camel', 'Underscore'].each do |casing|
    context "Convert to #{casing} Case" do
      specify "Converts keys and values to #{casing.downcase} case strings" do
        converter = Casing.const_get(casing)
        converted_hash = converter.(hash, values: true)

        __logger.data "\n#{casing}: Keys and Values\n- - -\n#{converted_hash.pretty_inspect}"

        assert(converter.case?(converted_hash, values: true))
      end
    end
  end
end
