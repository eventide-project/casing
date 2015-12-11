module Casing
  class Pascal
    class Array
      def self.call(*)
        raise Casing::Error, "Array cannot be converted to pascal case"
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
