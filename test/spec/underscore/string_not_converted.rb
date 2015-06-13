require_relative '../spec_init'

describe "String not converted to Underscore Case" do
  it "Does not convert from PascalCase to underscore_case" do
    str = 'SomeString'
    converted = Casing::Underscore.! str, convert_values: false
    assert(converted == str)
  end

  it "Does not convert from camelCase to underscore_case" do
    str = 'someString'
    converted = Casing::Underscore.! str, convert_values: false
    assert(converted == str)
  end

  it "Does not convert symbols to strings" do
    sym = :some_string
    converted = Casing::Underscore.! sym, convert_values: false
    assert(converted == sym)
  end

  it "Has no effect on underscore_case" do
    str = 'some_string'
    converted = Casing::Underscore.! str, convert_values: false
    assert(converted == str)
  end
end
