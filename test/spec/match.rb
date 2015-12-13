require_relative 'spec_init'

['Camel', 'Underscore', 'Pascal'].each do |casing|
  describe "Match of #{casing} Casing" do
    specify "#{casing} case string" do
      control = Casing::Controls::String.const_get(casing)
      string = control.example

      converter = Casing.const_get(casing)
      assert(converter.match?(string))
    end

    specify "Not #{casing} case string" do
      control = Casing::Controls::String.const_get(casing).const_get('Contrary')

      string = control.example

      converter = Casing.const_get(casing)
      refute(converter.match?(string))
    end
  end
end
