module Casing
  module Hash
    module Camel
      def self.!(hash)
        camel_keys(hash)
      end

      def self.camel_keys(val)
        case val
          when ::Array
            val.map { |v| camel_keys(v) }
          when ::Hash
            ::Hash[val.map { |k, v| [camel_case(k), camel_keys(v)] }]
          else
            val
        end
      end

      def self.camel_case(val)
        Casing::Camel.! val
      end
    end
  end
end
