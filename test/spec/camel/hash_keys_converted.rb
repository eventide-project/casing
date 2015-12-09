require_relative '../spec_init'

describe "Hash Keys Converted to Camel Case" do
  it "Converts keys to camel case strings" do
    hash = Casing::Controls::Hash.example
    camel_hash = Casing::Camel.(hash)

    Casing::Camel.assure(camel_hash)
  end
end
