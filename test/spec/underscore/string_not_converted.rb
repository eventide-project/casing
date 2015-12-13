require_relative '../spec_init'

describe "String not converted to Underscore Case" do
  it "Does not convert from PascalCase to underscore_case" do
    str = Casing::Controls::String::Pascal.example
    converted = Casing::Underscore.(str, values: false)

    assert(converted == str)
  end

  it "Does not convert from camelCase to underscore_case" do
    str = Casing::Controls::String::Camel.example
    converted = Casing::Underscore.(str, values: false)

    assert(converted == str)
  end

  it "Does not convert symbols to strings" do
    sym = Casing::Controls::String::Symbol.example
    converted = Casing::Underscore.(sym, values: false)

    assert(converted == sym)
  end

  it "Has no effect on underscore_case" do
    str = Casing::Controls::String::Underscore.example
    converted = Casing::Underscore.(str, values: false)

    assert(converted == str)
  end
end
