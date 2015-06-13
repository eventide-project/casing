module Casing
  module Camel
    module String
      def self.!(val, convert_values: true)
        return val unless convert_values

        val
          .to_s
          .chars.first.downcase +
            Pascal.!(val)[1..-1]
      end
    end
  end
end
