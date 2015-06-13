require_relative '../spec_init'

describe "String not Converted to Pascal Case" do
  it "Does not convert from under_score to PascalCase" do
    str = 'some_string'
    converted = Casing::Pascal.! str, convert_values: false
    assert(converted == str)
  end

  it "Does not convert from camelCase to PascalCase" do
    str = 'someString'
    converted = Casing::Pascal.! str, convert_values: false
    assert(converted == str)
  end

  it "Does not convert symbols to strings" do
    sym = :SomeString
    converted = Casing::Pascal.! sym, convert_values: false
    assert(converted == sym)
  end

  it "Has no effect on PascalCase" do
    str = 'SomeString'
    converted = Casing::Pascal.! str, convert_values: false
    assert(converted == str)
  end
end
