module Casing
  class Camel
    module Hash
      def self.call(val, values: nil)
        values = values.nil? ? false : values

        ::Hash[val.map { |k, v| [Casing::Camel.(k, values: true), Casing::Camel.(v, values: values)] }]
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
