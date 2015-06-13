# require_relative '../spec_init'

# module AssertUnderscoreKeys
#   def self.!(hash)
#     underscore_keys? hash
#   end

#   def self.underscore_keys?(val)
#     case val
#       when ::Array
#         val.map { |v| underscore_keys?(v) }
#       when ::Hash
#         val.map { |k, v| camel_case?(k); underscore_keys?(v) }
#       else
#         val
#     end
#   end

#   def self.camel_case?(val)
#     unless val.match /^[a-z]+([A-Z][a-z]+)+/
#       raise "#{val} is not camel cased"
#     end
#   end
# end

# describe "Hash Keys Converted to Camel Case" do
#   it "Converts keys to camelCase strings" do
#     hash = Fixtures.hash
#     camel_hash = Casing::Camel.! hash

#     AssertCamelKeys.! camel_hash
#   end
# end
