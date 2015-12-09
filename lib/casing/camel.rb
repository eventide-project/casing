module Casing
  module Camel
    def self.call(val, convert_values: nil)
      case val
        when ::Hash
          Hash.(val, convert_values: convert_values)

        when ::Array
          Array.(val, convert_values: convert_values)

        when ::String
          String.(val, convert_values: convert_values)

        when ::Symbol
          String.(val, convert_values: convert_values)

        else
          val
      end
    end
    class << self; alias :! :call; end # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]

    def self.assure(val)
      case val
        when ::Array
          val.map { |v| assure(v) }
        when ::Hash
          val.map { |k, v| camel_case?(k); assure(v) }
        else
          val
      end
    end

    def self.camel_case?(val)
      val.split.each do |v|
        unless v.match /^([a-z]+([A-Z][a-z]+)+)|[a-z]+/
          raise "#{v} is not camel cased"
        end
      end
    end
  end
end
