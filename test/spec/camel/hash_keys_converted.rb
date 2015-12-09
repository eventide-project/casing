require_relative '../spec_init'

module AssertCamelKeys
  def self.call(hash)
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

describe "Hash Keys Converted to Camel Case" do
  it "Converts keys to camel case strings" do
    hash = Casing::Controls::Hash.example
    camel_hash = Casing::Camel.(hash)

    AssertCamelKeys.(camel_hash)
  end
end
