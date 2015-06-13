require_relative '../spec_init'

module AssertCamel
  def self.!(hash)
    camel_keys? hash
  end

  def self.camel_keys?(val)
    case val
      when ::Array
        val.map { |v| camel_keys?(v) }
      when ::Hash
        val.map { |k, v| camel_case?(k); camel_keys?(v) }
      else
        camel_case?(val)
    end
  end

  def self.camel_case?(val)
    val.split.each do |v|
      unless v.match /^([a-z]+([A-Z][a-z]+)+)|[a-z]+/
        raise "#{val} is not camel cased"
      end
    end
  end
end

describe "Hash Keys and Values Converted to Camel Case" do
  it "Converts keys and values to camelCase strings" do
    hash = Fixtures.hash
    camel_hash = Casing::Camel.! hash, convert_values: true

    AssertCamel.! camel_hash
  end
end
