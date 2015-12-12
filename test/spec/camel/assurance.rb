require_relative '../spec_init'

describe "Assurance of Camel Casing" do
  specify "Camel case string" do
    camel_case_string = Casing::Controls::String::Camel.example
    assert(Casing::Camel.case?(camel_case_string))
  end

  specify "Not camel case string" do
    not_camel_case_string = Casing::Controls::String::Pascal.example
    refute(Casing::Camel.case?(not_camel_case_string))
  end
end
