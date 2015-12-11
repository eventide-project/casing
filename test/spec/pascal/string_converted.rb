require_relative '../spec_init'

describe "String Converted to Pascal Case" do
  it "Converts from under_score to PascalCase" do
    str = Casing::Controls::String::Underscore.example
    converted = Casing::Pascal.(str)

    assert(converted == 'SomeString')
  end

  it "Converts from camelCase to PascalCase" do
    str = Casing::Controls::String::Camel.example
    converted = Casing::Pascal.(str)

    assert(converted == 'SomeString')
  end

  it "Converts symbols to strings" do
    sym = Casing::Controls::String::Symbol.example
    converted = Casing::Pascal.(sym)

    assert(converted == 'SomeString')
  end

  it "Has no effect on PascalCase" do
    str = Casing::Controls::String::Underscore.example
    converted = Casing::Pascal.(str)

    assert(converted == 'SomeString')
  end
end
