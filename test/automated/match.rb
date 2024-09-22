require_relative 'automated_init'

['Camel', 'Underscore', 'Pascal'].each do |casing|
  context "Match of #{casing} Casing" do
    converter = Casing.const_get(casing)
    control = Casing::Controls::String.const_get(casing)

    test "#{casing} case string" do
      string = control.example

      assert(converter.match?(string))
    end

    test "Not #{casing} case string" do
      contrary_control = control.const_get('Contrary')

      string = contrary_control.example

      assert(!converter.match?(string))
    end
  end
end
