require_relative 'spec_init'

['Camel', 'Underscore', 'Pascal'].each do |casing|
  describe "Match of #{casing} Casing" do
    converter = Casing.const_get(casing)
    control = Casing::Controls::String.const_get(casing)

    specify "#{casing} case string" do
      string = control.example

      assert(converter.match?(string))
    end

    specify "Not #{casing} case string" do
      contrary_control = control.const_get('Contrary')

      string = contrary_control.example

      refute(converter.match?(string))
    end
  end
end
