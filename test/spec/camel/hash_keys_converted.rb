require_relative '../spec_init'

describe "Hash Keys Converted to Camel Case" do
  it "Converts keys to camel case strings" do
    hash = Casing::Controls::Hash.example
    camel_hash = Casing::Camel.(hash)

    __logger.data "\nCamel: Keys\n- - -\n#{camel_hash.pretty_inspect}"
    __logger.data "\nInput\n- - -\n#{hash.pretty_inspect}"

    assert(Casing::Camel.case?(camel_hash))
  end
end
