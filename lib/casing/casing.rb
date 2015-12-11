module Casing
  class Error < RuntimeError; end

  def call(val, convert_values: nil)
    case val
      when ::Hash
        self::Hash.(val, convert_values: convert_values)

      when ::Array
        self::Array.(val, convert_values: convert_values)

      when ::String
        self::String.(val, convert_values: convert_values)

      when ::Symbol
        self::String.(val, convert_values: convert_values)

      else
        val
    end
  end

  # TODO: Remove deprecated actuator [Kelsey, Thu Oct 08 2015]
  def !(val, convert_values: nil)
    call(val, convert_values: nil)
  end

  def assure(val, assure_values: nil)
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

  def assure_case(val)
    val.split.each do |v|
      unless case?(v)
        raise Casing::Error, "#{val} is not #{self.name.split('::').last.downcase}-cased"
      end
    end
  end
end
