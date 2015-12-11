require_relative '../spec_init'

describe "String not Converted to Pascal Case" do
  it "Does not convert from under_score to PascalCase" do
    str = Casing::Controls::String::Underscore.example
    converted = Casing::Pascal.(str, convert_values: false)

    assert(converted == str)
  end

  it "Does not convert from camelCase to PascalCase" do
    str = Casing::Controls::String::Camel.example
    converted = Casing::Pascal.(str, convert_values: false)

    assert(converted == str)
  end

  it "Does not convert symbols to strings" do
    sym = Casing::Controls::String::Symbol.example
    converted = Casing::Pascal.(sym, convert_values: false)

    assert(converted == sym)
  end

  it "Has no effect on PascalCase" do
    str = Casing::Controls::String::Underscore.example
    converted = Casing::Pascal.(str, convert_values: false)

    assert(converted == str)
  end
end
