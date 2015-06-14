require_relative '../spec_init'

module AssertUnderscore
  def self.!(hash)
    underscore_keys? hash
  end

  def self.underscore_keys?(val)
    case val
      when ::Array
        val.map { |v| underscore_keys?(v) }
      when ::Hash
        val.map { |k, v| underscore_case?(k); underscore_keys?(v) }
      else
        underscore_case?(val)
    end
  end

  def self.underscore_case?(val)
    val.split.each do |v|
      unless v.match /^[a-z]+(_)[a-z]+|[a-z]+/
        raise "#{v} is not underscore case"
      end
    end
  end
end

describe "Hash Keys and Values Converted to Underscore Case" do
  it "Converts keys to underscore case strings" do
    hash = Fixtures.hash
    underscore_hash = Casing::Underscore.! hash, convert_values: true

    AssertUnderscore.! underscore_hash
  end
end
