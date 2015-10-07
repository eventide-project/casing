module Casing
  module Camel
    module Array
      def self.call(val, convert_values: nil)
        convert_values = convert_values.nil? ? false : convert_values

        val.map do |v|
          Casing::Camel.(v, convert_values: convert_values)
        end
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
