require_relative '../spec_init'

describe "Hash Keys and Values Converted to Camel Case" do
  it "Converts keys and values to camelCase strings" do
    hash = Casing::Controls::Hash.example
    camel_hash = Casing::Camel.(hash, convert_values: true)

    Casing::Camel.assure(camel_hash, assure_values: true)
  end
end
