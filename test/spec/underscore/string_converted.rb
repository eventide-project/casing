require_relative '../spec_init'

describe "String Converted to Underscore Case" do
  it "Converts from PascalCase to underscore case" do
    str = Casing::Controls::String::Pascal.example
    converted = Casing::Underscore.(str)

    assert(converted == 'some_string')
  end

  it "Converts from camelCase to underscore case" do
    str = Casing::Controls::String::Camel.example
    converted = Casing::Underscore.(str)

    assert(converted == 'some_string')
  end

  it "Converts symbols to strings" do
    sym = Casing::Controls::String::Symbol.example
    converted = Casing::Underscore.(sym)

    assert(converted == 'some_string')
  end

  it "Has no effect on underscore case" do
    str = Casing::Controls::String::Underscore.example
    converted = Casing::Underscore.(str)

    assert(converted == 'some_string')
  end
end
