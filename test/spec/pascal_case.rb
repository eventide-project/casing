require_relative 'spec_init'

describe "Pascal Case" do
  it "Converts from under_score to PascalCase" do
    str = 'some_string'
    camel_case = Casing::Camel.! str
    assert(camel_case == 'SomeString')
  end

  it "Converts from camelCase to CamelCase" do
    str = 'someString'
    camel_case = Casing::Camel.! str
    assert(camel_case == 'SomeString')
  end

  it "Has no effect on CamelCase" do
    str = 'SomeString'
    camel_case = Casing::Camel.! str
    assert(camel_case == 'SomeString')
  end
end
