module Casing
  class Pascal
    class Hash
      def self.call(*)
        raise Casing::Error, "Hash cannot be converted to pascal case"
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
