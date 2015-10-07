require_relative '../spec_init'

describe "String not Converted to Camel Case" do
  it "Does not convert from under_score to camelCase" do
    str = 'some_string'
    converted = Casing::Camel.(str, convert_values: false)
    assert(converted == str)
  end

  it "Does not convert from PascalCase to camelCase" do
    str = 'SomeString'
    converted = Casing::Camel.(str, convert_values: false)
    assert(converted == str)
  end

  it "Does not convert symbols to strings" do
    sym = :someString
    converted = Casing::Camel.(sym, convert_values: false)
    assert(converted == sym)
  end

  it "Has no effect on camelCase" do
    str = 'someString'
    converted = Casing::Camel.(str, convert_values: false)
    assert(converted == str)
  end
end
