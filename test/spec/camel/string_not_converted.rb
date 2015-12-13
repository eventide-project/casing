require_relative '../spec_init'

describe "String not Converted to Camel Case" do
  it "Does not convert from under_score to camelCase" do
    str = Casing::Controls::String::Underscore.example
    converted = Casing::Camel.(str, values: false)

    assert(converted == str)
  end

  it "Does not convert from PascalCase to camelCase" do
    str = Casing::Controls::String::Pascal.example
    converted = Casing::Camel.(str, values: false)

    assert(converted == str)
  end

  it "Does not convert symbols to strings" do
    sym = Casing::Controls::String::Symbol.example
    converted = Casing::Camel.(sym, values: false)

    assert(converted == sym)
  end

  it "Has no effect on camelCase" do
    str = Casing::Controls::String::Camel.example
    converted = Casing::Camel.(str, values: false)

    assert(converted == str)
  end
end
