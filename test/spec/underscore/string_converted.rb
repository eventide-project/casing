require_relative '../spec_init'

describe "String Converted to Underscore Case" do
  it "Converts from PascalCase to underscore case" do
    str = Casing::Controls::String::Pascal.example
    converted = Casing::Underscore.(str)

    assert(Casing::Underscore.case?(converted))
  end

  it "Converts from camelCase to underscore case" do
    str = Casing::Controls::String::Camel.example
    converted = Casing::Underscore.(str)

    assert(Casing::Underscore.case?(converted))
  end

  it "Converts symbols to strings" do
    sym = Casing::Controls::String::Symbol.example
    converted = Casing::Underscore.(sym)

    assert(Casing::Underscore.case?(converted))
  end

  it "Has no effect on underscore case" do
    str = Casing::Controls::String::Underscore.example
    converted = Casing::Underscore.(str)

    assert(Casing::Underscore.case?(converted))
  end
end
