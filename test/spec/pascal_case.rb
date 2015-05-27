require_relative 'spec_init'

describe "Pascal Case" do
  it "Converts from under_score to PascalCase" do
    str = 'some_string'
    camel_case = Casing::Pascal.! str
    assert(camel_case == 'SomeString')
  end

  it "Converts from camelCase to PascalCase" do
    str = 'someString'
    camel_case = Casing::Pascal.! str
    assert(camel_case == 'SomeString')
  end

  it "Converts symbols to strings" do
    sym = :SomeString
    camel_case = Casing::Pascal.! sym
    assert(camel_case == 'SomeString')
  end

  it "Has no effect on PascalCase" do
    str = 'SomeString'
    camel_case = Casing::Pascal.! str
    assert(camel_case == 'SomeString')
  end
end
