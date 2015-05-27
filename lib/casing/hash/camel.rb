module Casing
  module Hash
    module Camel
      def self.!(hash)
        camel_keys(hash)
      end

      def self.camel_keys(hash)
        case value
          when Array
            value.map { |v| camel_keys(hash) }
          when Hash
            Hash[value.map { |k, v| [camel_key(k), camel_keys(v)] }]
          else
            value
        end
      end

      def camel_key(k)
        if k.is_a? Symbol
          camelize(k.to_s, first_upper).to_sym
        elsif k.is_a? String
          camelize(k, first_upper)
        else
          k # Awrence can't camelize anything except strings and symbols
        end
      end

      def camelize(snake_word, first_upper = true)
        if first_upper
          snake_word.to_s.gsub(/\/(.?)/) { "::" + $1.upcase }.gsub(/(^|_)(.)/) { $2.upcase }
        else
          snake_word.chars.first + camelize(snake_word)[1..-1]
        end
      end
    end
  end
end
