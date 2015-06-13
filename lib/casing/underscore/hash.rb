module Casing
  module Underscore
    module Hash
      def self.!(hash)
        underscore_keys(hash)
      end

      def self.underscore_keys(val)
        case val
          when ::Array
            val.map { |v| underscore_keys(v) }
          when ::Hash
            ::Hash[val.map { |k, v| [underscore_case(k), underscore_keys(v)] }]
          else
            val
        end
      end

      def self.underscore_case(val)
        Casing::Underscore.! val
      end
    end
  end
end
