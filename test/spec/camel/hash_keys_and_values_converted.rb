require_relative '../spec_init'

describe "Hash Keys and Values Converted to Camel Case" do
  it "Converts keys and values to camelCase strings" do
    hash = Casing::Controls::Hash.example
    camel_hash = Casing::Camel.(hash, convert_values: true)

    __logger.data "\nCamel: Keys and Values\n- - -\n#{camel_hash.pretty_inspect}"
    __logger.data "\nInput\n- - -\n#{hash.pretty_inspect}"

    Casing::Camel.assure(camel_hash, assure_values: true)
  end
end
