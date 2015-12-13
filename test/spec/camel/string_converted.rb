require_relative '../spec_init'

describe "String Converted to Camel Case" do
  it "Converts from under_score to camelCase" do
    str = Casing::Controls::String::Underscore.example
    converted = Casing::Camel.(str)

    assert(Casing::Camel.match?(converted))
  end

  it "Converts from PascalCase to camelCase" do
    str = Casing::Controls::String::Pascal.example
    converted = Casing::Camel.(str)

    assert(Casing::Camel.match?(converted))
  end

  it "Converts symbols to strings" do
    sym = Casing::Controls::String::Symbol.example
    converted = Casing::Camel.(sym)

    assert(Casing::Camel.match?(converted))
  end

  it "Has no effect on camelCase" do
    str = Casing::Controls::String::Camel.example
    converted = Casing::Camel.(str)

    assert(Casing::Camel.match?(converted))
  end
end
