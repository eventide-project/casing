require_relative '../spec_init'

module AssertCamelKeys
  def self.call(hash)
    prove? hash
  end

  def self.prove?(val)
    case val
      when ::Array
        val.map { |v| prove?(v) }
      when ::Hash
        val.map { |k, v| camel_case?(k); prove?(v) }
      else
        val
    end
  end

  def self.camel_case?(val)
    val.split.each do |v|
      unless v.match /^([a-z]+([A-Z][a-z]+)+)|[a-z]+/
        raise "#{v} is not camel cased"
      end
    end
  end
end

describe "Hash Keys Converted to Camel Case" do
  it "Converts keys to camel case strings" do
    hash = Casing::Controls::Hash.example
    camel_hash = Casing::Camel.(hash)

    # AssertCamelKeys.(camel_hash)
    Casing::Camel.assure(camel_hash)
  end
end
