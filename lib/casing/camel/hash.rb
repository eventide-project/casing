module Casing
  module Camel
    module Hash
      def self.!(val, convert_values: false)
        ::Hash[val.map { |k, v| [Casing::Camel.!(k, convert_values: true), Casing::Camel.!(v, convert_values: convert_values)] }]
      end

      # def self.camel_keys(val)
      #   case val
      #     when ::Array
      #       val.map { |v| camel_keys(v) }
      #     when ::Hash
      #       ::Hash[val.map { |k, v| [camel_case(k), camel_keys(v)] }]
      #     else
      #       val
      #   end
      # end

      # def self.camel_case(val)
      #   Casing::Camel.! val
      # end
    end
  end
end
