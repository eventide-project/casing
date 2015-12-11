module Casing
  module Underscore
    class Error < RuntimeError; end

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

    def self.assure(val, assure_values: nil)
      assure_values ||= false

      case val
        when ::Array
          val.map { |v| assure(v, assure_values: assure_values) }
        when ::Hash
          val.map { |k, v| assure_case(k); assure(v, assure_values: assure_values) }
        else
          if assure_values
            assure_case(val)
          end

          val
      end
    end

    def self.assure_case(val)
      val.split.each do |v|
        unless case?(v)
          raise Error, "#{val} is not underscore-cased"
        end
      end
    end

    def self.case?(val)
      !!((((val =~ /^[a-z]/) && (val =~ /_/)) || (val =~ /^[a-z]/)) && !(val =~ /[A-Z]/))
    end
  end
end
