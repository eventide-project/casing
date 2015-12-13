module Casing
  class Camel
    module Array
      def self.call(val, values: nil)
        values = values.nil? ? false : values

        val.map do |v|
          Casing::Camel.(v, values: values)
        end
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
