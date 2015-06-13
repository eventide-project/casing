module Casing
  module Pascal
    module String
      def self.!(val, convert_values: nil)
        convert_values = convert_values.nil? ? true : convert_values

        val
          .to_s
          .gsub(/\/(.?)/) { "::" + $1.upcase }
          .gsub(/(^|_)(.)/) { $2.upcase }
      end
    end
  end
end
