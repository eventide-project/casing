require_relative '../spec_init'

describe "Camel Case" do
  it "Converts from under_score to camelCase" do
    str = 'some_string'
    converted = Casing::Camel.! str
    assert(converted == 'someString')
  end

  it "Converts from PascalCase to camelCase" do
    str = 'SomeString'
    converted = Casing::Camel.! str
    assert(converted == 'someString')
  end

  it "Converts symbols to strings" do
    sym = :someString
    converted = Casing::Camel.! sym
    assert(converted == 'someString')
  end

  it "Has no effect on camelCase" do
    str = 'someString'
    converted = Casing::Camel.! str
    assert(converted == 'someString')
  end
end
