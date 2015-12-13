require_relative 'spec_init'

['Camel', 'Underscore'].each do |casing|
  describe "Hash Keys Converted to #{casing} Case" do
    it "Converts keys to #{casing.downcase} case strings" do
      hash = Casing::Controls::Hash.example

      converter = Casing.const_get(casing)
      camel_hash = converter.(hash)

      __logger.data "\n#{casing}: Keys\n- - -\n#{camel_hash.pretty_inspect}"
      __logger.data "\nInput\n- - -\n#{hash.pretty_inspect}"

      assert(converter.case?(camel_hash))
    end
  end
end
