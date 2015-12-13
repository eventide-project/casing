require_relative '../spec_init'

describe "Hash Keys and Values Converted to Underscore Case" do
  it "Converts keys to underscore case strings" do
    hash = Casing::Controls::Hash.example
    underscore_hash = Casing::Underscore.(hash, values: true)

    __logger.data "\nUnderscore: Keys\n- - -\n#{underscore_hash.pretty_inspect}"
    __logger.data "\nInput\n- - -\n#{hash.pretty_inspect}"

    assert(Casing::Underscore.case?(underscore_hash))
  end
end
