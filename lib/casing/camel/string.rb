module Casing
  class Camel
    module String
      def self.call(val, values: nil)
        values = values.nil? ? true : values

        return val unless values

        val
          .to_s
          .chars.first.downcase +
            Pascal::String.(val)[1..-1]
      end
      class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
    end
  end
end
