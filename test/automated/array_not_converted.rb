require_relative 'automated_init'

context "Array" do
  values = Casing::Controls::Array.example

  ['Camel', 'Underscore'].each do |casing|
    context "Array of Values" do
      control = "not_#{casing.downcase}_case"
      values = Casing::Controls::Array.send control

      converter = Casing.const_get(casing)
      converted_values = converter.(values, include_values: false)

      context "Not Converted to Array of #{casing.downcase} Case Values" do
        converted_values.each do |value|
          test value do
            assert(!converter.case?(value, include_values: true))
          end
        end
      end
    end
  end
end
