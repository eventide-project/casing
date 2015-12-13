module Casing
  class Underscore
    module Array
      def self.call(val, values: nil)
        values = values.nil? ? false : values

        val.map do |v|
          Casing::Underscore.(v, values: values)
        end
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
