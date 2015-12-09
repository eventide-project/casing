require_relative '../spec_init'

describe "Hash Keys Converted to Camel Case" do
  it "Converts keys to camel case strings" do
    hash = Casing::Controls::Hash.example
    camel_hash = Casing::Camel.(hash)

    __logger.info "\nCamel: Keys\n- - -\n#{camel_hash.pretty_inspect}"
    __logger.info "\nInput\n- - -\n#{hash.pretty_inspect}"

    Casing::Camel.assure(camel_hash)
  end
end
