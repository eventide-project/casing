require_relative '../spec_init'

describe "Assurance of Underscore Casing" do
  specify "Underscore case string" do
    underscore_case_string = Casing::Controls::String::Underscore.example
    assert(Casing::Underscore.case?(underscore_case_string))
  end

  specify "Not underscore case string" do
    not_underscore_case_string = Casing::Controls::String::Camel.example
    refute(Casing::Underscore.case?(not_underscore_case_string))
  end
end
