require_relative 'spec_init'

describe "Hash Keys" do
  hash = Casing::Controls::Hash.example
  __logger.data "\nInput\n- - -\n#{hash.pretty_inspect}"

  ['Camel', 'Underscore'].each do |casing|
    context "Convert to #{casing} Case" do
      specify "Converts keys to #{casing.downcase} case strings" do
        converter = Casing.const_get(casing)
        converted_hash = converter.(hash)

        __logger.data "\n#{casing}: Keys\n- - -\n#{converted_hash.pretty_inspect}"

        assert(converter.case?(converted_hash))
      end
    end
  end
end
