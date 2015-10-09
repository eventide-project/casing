require_relative '../spec_init'

module AssertUnderscoreKeys
  def self.call(hash)
    underscore_keys? hash
  end

  def self.underscore_keys?(val)
    case val
      when ::Array
        val.map { |v| underscore_keys?(v) }
      when ::Hash
        val.map { |k, v| underscore_case?(k); underscore_keys?(v) }
      else
        val
    end
  end

  def self.underscore_case?(val)
    unless val.match /^[a-z]+(_)[a-z]+/
      raise "#{val} is not underscore case"
    end
  end
end

describe "Hash Keys Converted to Underscore Case" do
  it "Converts keys to underscore case strings" do
    hash = Fixtures.hash
    underscore_hash = Casing::Underscore.(hash)

    AssertUnderscoreKeys.(underscore_hash)
  end
end
