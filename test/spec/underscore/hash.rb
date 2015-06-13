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
#         val.map { |k, v| underscore_case?(k); underscore_keys?(v) }
#       else
#         val
#     end
#   end

#   def self.underscore_case?(val)
#     unless val.match /^[a-z]+(_)[a-z]+/
#       raise "#{val} is not underscore_case case"
#     end
#   end
# end

# describe "Underscore Case Hash Keys" do
#   it "Converts keys to underscore_case strings" do
#     hash = Fixtures.hash
#     underscore_key_hash = Casing::Hash::Underscore.! hash

#     AssertUnderscoreKeys.! underscore_key_hash
#   end
# end
