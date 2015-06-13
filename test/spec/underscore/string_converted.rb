require_relative '../spec_init'

describe "String Converted to Underscore Case" do
  it "Converts from PascalCase to underscore case" do
    str = 'SomeString'
    converted = Casing::Underscore.! str
    assert(converted == 'some_string')
  end

  it "Converts from camelCase to underscore case" do
    str = 'someString'
    converted = Casing::Underscore.! str
    assert(converted == 'some_string')
  end

  it "Converts symbols to strings" do
    sym = :some_string
    converted = Casing::Underscore.! sym
    assert(converted == 'some_string')
  end

  it "Has no effect on underscore case" do
    str = 'some_string'
    converted = Casing::Underscore.! str
    assert(converted == 'some_string')
  end
end
