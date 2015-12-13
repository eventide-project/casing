require_relative 'spec_init'

['Camel', 'Underscore'].each do |casing|
  describe "Hash Keys and Values Converted to #{casing} Case" do
    it "Converts keys and values to #{casing.downcase} case strings" do
      hash = Casing::Controls::Hash.example

      converter = Casing.const_get(casing)
      camel_hash = converter.(hash, convert_values: true)

      __logger.data "\n#{casing}: Keys\n- - -\n#{camel_hash.pretty_inspect}"
      __logger.data "\nInput\n- - -\n#{hash.pretty_inspect}"

      assert(converter.case?(camel_hash, values: true))
    end
  end
end
