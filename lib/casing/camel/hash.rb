module Casing
  module Camel
    module Hash
      def self.call(val, convert_values: nil)
        convert_values = convert_values.nil? ? false : convert_values

        ::Hash[val.map { |k, v| [Casing::Camel.(k, convert_values: true), Casing::Camel.(v, convert_values: convert_values)] }]
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
