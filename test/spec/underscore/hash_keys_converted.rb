require_relative '../spec_init'

describe "Hash Keys Converted to Underscore Case" do
  it "Converts keys to underscore case strings" do
    hash = Casing::Controls::Hash.example
    underscore_hash = Casing::Underscore.(hash)

    __logger.data "\nUnderscore: Keys\n- - -\n#{underscore_hash.pretty_inspect}"
    __logger.data "\nInput\n- - -\n#{hash.pretty_inspect}"

    Casing::Underscore.assure(underscore_hash)
  end
end
