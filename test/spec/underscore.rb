require_relative 'spec_init'

describe "Underscore Case" do
  it "Converts from PascalCase to under_score" do
    str = 'SomeString'
    camel_case = Casing::Underscore.! str
    assert(camel_case == 'some_string')
  end

  it "Converts from camelCase to under_score" do
    str = 'someString'
    camel_case = Casing::Underscore.! str
    assert(camel_case == 'some_string')
  end

  it "Has no effect on under_score" do
    str = 'some_string'
    camel_case = Casing::Underscore.! str
    assert(camel_case == 'some_string')
  end
end
