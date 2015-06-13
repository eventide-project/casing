require_relative '../spec_init'

describe "String Converted to Pascal Case" do
  it "Converts from under_score to PascalCase" do
    str = 'some_string'
    converted = Casing::Pascal.! str
    assert(converted == 'SomeString')
  end

  it "Converts from camelCase to PascalCase" do
    str = 'someString'
    converted = Casing::Pascal.! str
    assert(converted == 'SomeString')
  end

  it "Converts symbols to strings" do
    sym = :SomeString
    converted = Casing::Pascal.! sym
    assert(converted == 'SomeString')
  end

  it "Has no effect on PascalCase" do
    str = 'SomeString'
    converted = Casing::Pascal.! str
    assert(converted == 'SomeString')
  end
end
