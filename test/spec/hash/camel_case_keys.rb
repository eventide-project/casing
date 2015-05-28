require_relative '../spec_init'

module AssertCamelKeys
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
        val
    end
  end

  def self.camel_case?(val)
    unless val.match /^[a-z]+([A-Z][a-z]+)+/
      raise "#{val} is not camel cased"
    end
  end
end

describe "Camel Case Hash Keys" do
  it "Converts keys to camelCase strings" do
    hash = Fixtures.hash
    camel_key_hash = Casing::Hash::Camel.! hash

    AssertCamelKeys.! camel_key_hash
  end
end
