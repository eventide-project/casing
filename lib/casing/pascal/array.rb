module Casing
  class Pascal
    class Array
      def self.call(*)
        raise Casing::Error, "Array cannot be converted to pascal case"
      end
    end
  end
end
