require_relative '../spec_init'

describe "Assurance of Pascal Casing" do
  specify "Pascal case string" do
    pascal_case_string = Casing::Controls::String::Pascal.example
    assert(Casing::Pascal.match?(pascal_case_string))
  end

  specify "Not pacal case string" do
    not_pascal_case_string = Casing::Controls::String::Camel.example
    refute(Casing::Pascal.match?(not_pascal_case_string))
  end
end
