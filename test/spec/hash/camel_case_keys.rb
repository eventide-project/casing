require_relative 'spec_init'

# describe "Camel Case Hash Keys" do
#   it "Converts from under_score to camelCase" do
#     str = 'some_string'
#     camel_case = Casing::Camel.! str
#     assert(camel_case == 'someString')
#   end

#   it "Converts from PascalCase to camelCase" do
#     str = 'SomeString'
#     camel_case = Casing::Camel.! str
#     assert(camel_case == 'someString')
#   end

#   it "Has no effect on camelCase" do
#     str = 'someString'
#     camel_case = Casing::Camel.! str
#     assert(camel_case == 'someString')
#   end
# end

hash = Fixtures.hash

camel_key_hash = Casing::Hash::Camel.! hash

puts camel_key_hash.inspect
