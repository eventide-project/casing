module Casing
  class Pascal
    class Hash
      def self.call(*)
        raise Casing::Error, "Hash cannot be converted to pascal case"
      end
    end
  end
end
